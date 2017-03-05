using System;
using System.Globalization;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using VehicleSale.Models;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using ClassLibrary1;
using AutoMapper;
using System.Web.Security;
using Newtonsoft.Json;
using CaptchaMvc.HtmlHelpers;
using System.Data.Entity;
using System.Net.Mail;
using System.Net;
using VehicleSale.ViewModels;
using System.Web.Routing;

namespace VehicleSale.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {
        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;
        private VehicleSaleEntities context = new VehicleSaleEntities();
        public AccountController()
        {
        }

        public AccountController(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            UserManager = userManager;
            SignInManager = signInManager;
        }

        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set
            {
                _signInManager = value;
            }
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }

        //
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginViewModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                model.Password = Encrypt(model.Password);
                var user = (from u in context.Users
                            join role in context.Roles on u.RoleID equals role.ID
                            where u.Email == model.Email && u.Password == model.Password
                            select new ViewModels.RoleVM
                            {
                                UserId = u.ID,
                                RoleName = role.RoleName,
                                FirstName = u.FirstName,
                                LastName = u.LastName,
                                Email = u.Email,
                                Password = u.Password,
                                IsActive = u.IsActive

                            }).FirstOrDefault();
                if (user != null)
                {
                    if (user.IsActive == true)
                    {

                        Session["CurrentUser"] = user;
                        Session["CurrentUserId"] = user.UserId;

                        FormsAuthentication.SetAuthCookie(model.Email, false);

                        var authTicket = new FormsAuthenticationTicket(1, user.Email, DateTime.Now, DateTime.Now.AddMinutes(20), false, user.RoleName);
                        string encryptedTicket = FormsAuthentication.Encrypt(authTicket);
                        var authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
                        HttpContext.Response.Cookies.Add(authCookie);

                        //string userData = JsonConvert.SerializeObject(model);
                        //FormsAuthenticationTicket authTicket = new FormsAuthenticationTicket(
                        //         1,
                        //        user.Email,
                        //         DateTime.Now,
                        //         DateTime.Now.AddMinutes(60),
                        //         false,
                        //         userData);

                        //string encTicket = FormsAuthentication.Encrypt(authTicket);
                        //HttpCookie faCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encTicket);
                        //Response.Cookies.Add(faCookie);

                        // if(user.UserRole=="Mer")
                        // {
                        if (user.RoleName == "Admin")
                        {
                            Session["Admin"] = user;
                            Session["AdminId"] = user.UserId;
                            return RedirectToAction("Index", "Home", new RouteValueDictionary(new { login = "true" }));
                        }
                        else
                        {
                            return RedirectToAction("Index", "Home", new RouteValueDictionary(new { login = "true" }));
                        }
                        // }
                    }
                    else
                    {

                        ViewBag.Error = "Your Account is closed contact us for Login.";

                    }
                }
                else
                {
                    //  ModelState.AddModelError("Error", "Invalid username or password.");
                    ViewBag.Error = "Invalid Email or password.";
                }
            }
            return View(model);

        }

        //
        // GET: /Account/VerifyCode
        [AllowAnonymous]
        public async Task<ActionResult> VerifyCode(string provider, string returnUrl, bool rememberMe)
        {
            // Require that the user has already logged in via username/password or external login
            if (!await SignInManager.HasBeenVerifiedAsync())
            {
                return View("Error");
            }
            return View(new VerifyCodeViewModel { Provider = provider, ReturnUrl = returnUrl, RememberMe = rememberMe });
        }

        //
        // POST: /Account/VerifyCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> VerifyCode(VerifyCodeViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            // The following code protects for brute force attacks against the two factor codes. 
            // If a user enters incorrect codes for a specified amount of time then the user account 
            // will be locked out for a specified amount of time. 
            // You can configure the account lockout settings in IdentityConfig
            var result = await SignInManager.TwoFactorSignInAsync(model.Provider, model.Code, isPersistent: model.RememberMe, rememberBrowser: model.RememberBrowser);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(model.ReturnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.Failure:
                default:
                    ModelState.AddModelError("", "Invalid code.");
                    return View(model);
            }
        }

        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        //
        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Register(RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {

                model.Password = Encrypt(model.Password);
                var Exist = context.Users.Where(x => x.Email == model.Email).FirstOrDefault();
                User user = new ClassLibrary1.User();
                if (Exist == null)
                {
                    if (this.IsCaptchaValid("Captcha is not valid"))
                    {
                        var config = new MapperConfiguration(cfg =>
                        {
                            cfg.CreateMap<RegisterViewModel, User>();
                        });

                        IMapper mapper = config.CreateMapper();

                        user = mapper.Map<RegisterViewModel, User>(model);
                        user.IsActive = false;
                        var roleid = context.Roles.Where(role => role.RoleName == "User").FirstOrDefault();
                        user.RoleID = roleid.ID;
                        context.Users.Add(user);
                        context.SaveChanges();
                        EmailVerificationMail(model.Email);
                        return RedirectToAction("Index", "Home");

                    }
                    else
                    {
                        ViewBag.ErrMessage = "Error: captcha is not valid.";
                        return View();
                    }

                }
                //var user = new ApplicationUser { UserName = model.Email, Email = model.Email };
                //var result = await UserManager.CreateAsync(user, model.Password);
                //if (result.Succeeded)
                //{
                //    await SignInManager.SignInAsync(user, isPersistent:false, rememberBrowser:false);

                //    // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //    // Send an email with this link
                //    // string code = await UserManager.GenerateEmailConfirmationTokenAsync(user.Id);
                //    // var callbackUrl = Url.Action("ConfirmEmail", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);
                //    // await UserManager.SendEmailAsync(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>");

                //    return RedirectToAction("Index", "Home");
                //}
                //  AddErrors(result);
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }
        public void EmailVerificationMail(string email)
        {

            string href = Request.Url.GetLeftPart(UriPartial.Authority) + "/Account/EmailVerification?Email=" + email;
            // context.Response.Write(string.Format("Name :{0} , Age={1}, Qualification={2}", fullName, age, qua));
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("gorab@technocodz.com");
            msg.To.Add(email);
            msg.Subject = "Account Verification";
            msg.IsBodyHtml = true;
            msg.Body = "You Can Click the link for Account Activation <a href=" + href + ">Activate Now<a>";

            SmtpClient sc = new SmtpClient("mail.technocodz.com");

            sc.Port = 25;
            //  sc.Credentials = new NetworkCredential("as2647566@gmail.com", "123456qw");
            //   sc.EnableSsl = true;
            sc.Send(msg);
        }

        [HttpPost]
        [AllowAnonymous]
        public JsonResult Login_Socail(string Email, string Name, string Provider, string ProviderKey)
        {
            var user = (from users in context.Users
                        join social in context.Login_SocailNetwork on users.ProviderKey equals social.ProviderKey
                        where users.ProviderKey == ProviderKey && social.ProviderName == "Facebook"
                        select new LoginSocial
                        {
                            ID = users.ID,
                            FirstName = users.FirstName,
                            LastName = users.LastName,
                            Email = users.Email,
                            UserId = users.ID,
                            Phone = users.Phone,
                            DOB = users.DOB,
                            Password = users.Password,
                            UserName = users.UserName,
                            IsActive = users.IsActive,
                            RoleID = users.RoleID,
                            ForgetPassword = users.ForgetPassword,
                            ProviderKey = users.ProviderKey
                        }).FirstOrDefault();
            if (user == null)
            {
                user = (from users in context.Users
                        join social in context.Login_SocailNetwork on users.Email equals social.Email
                        where users.Email == Email && social.ProviderName == "Google"
                        select new LoginSocial
                        {
                            ID = users.ID,
                            FirstName = users.FirstName,
                            LastName = users.LastName,
                            Email = users.Email,
                            Phone = users.Phone,
                            DOB = users.DOB,
                            Password = users.Password,
                            UserName = users.UserName,
                            IsActive = users.IsActive,
                            RoleID = users.RoleID,
                            ForgetPassword = users.ForgetPassword,
                            ProviderKey = users.ProviderKey
                        }).FirstOrDefault();
            }
            //&& ProviderKey.Contains(x.Token)
            string LastName = Name.Split(' ')[1];
            string FirstName = Name.Split(' ')[0];
            if (user == null)
            {
                Login_SocailNetwork loginSocial = new Login_SocailNetwork();
                loginSocial.Email = Email;
                loginSocial.Name = Name;
                loginSocial.ProviderName = Provider;
                loginSocial.ProviderKey = ProviderKey;
                loginSocial.CreatedOn = DateTime.Now;
                loginSocial.IsActive = true;
                context.Login_SocailNetwork.Add(loginSocial);
                context.SaveChanges();


                CustomPrincipalSerializeModel serializeModel = new CustomPrincipalSerializeModel();

                Session["LoginSocail"] = Provider;
                Session["LoginFirstName"] = FirstName;
                Session["LoginLastName"] = LastName;
                Session["LoginEmail"] = Email;
                Session["ProviderKey"] = ProviderKey;
                return Json(new { success = true }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                RoleVM userrole = new RoleVM();
                //  bool Exist = context.Login_SocailNetwork.Where(ls => ls.Email == Email).ToList().Any();
                userrole.UserId = user.UserId;
                userrole.FirstName = user.FirstName;
                userrole.LastName = user.LastName;
                userrole.RoleName = user.RoleName;
                userrole.Password = user.Password;
                userrole.Email = user.Email;
                userrole.IsActive = user.IsActive;
                Session["UserRole"] = user.RoleID;
                Session["CurrentUser"] = userrole;
                Session["CurrentUserId"] = user.UserId;
                CustomPrincipalSerializeModel serializeModel = new CustomPrincipalSerializeModel();

                serializeModel.FirstName = FirstName;
                serializeModel.roles = "User";
                string userData = JsonConvert.SerializeObject(serializeModel);
                FormsAuthenticationTicket authTicket = new FormsAuthenticationTicket(
                         1,
                        user.Email,
                         DateTime.Now,
                         DateTime.Now.AddMinutes(20),
                         false,
                         userData);


                string encTicket = FormsAuthentication.Encrypt(authTicket);
                HttpCookie faCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encTicket)
                {
                    Domain = FormsAuthentication.CookieDomain,
                    Path = FormsAuthentication.FormsCookiePath,
                    HttpOnly = true,
                    Secure = FormsAuthentication.RequireSSL
                };

                Response.Cookies.Add(faCookie);


                //ViewBag.Error = "Email Id already Exit??";
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }


        }

        public class CustomPrincipalSerializeModel
        {
            public int UserId { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string roles { get; set; }
        }
        public ActionResult EmailVerification(string Email)
        {

            User u = context.Users.Single(ud => ud.Email == Email);
            u.IsActive = true;
            context.SaveChanges();
            return RedirectToAction("Login", "Account");
        }
        //
        // GET: /Account/ConfirmEmail
        [AllowAnonymous]
        public async Task<ActionResult> ConfirmEmail(string userId, string code)
        {
            if (userId == null || code == null)
            {
                return View("Error");
            }
            var result = await UserManager.ConfirmEmailAsync(userId, code);
            return View(result.Succeeded ? "ConfirmEmail" : "Error");
        }
        //
        // GET: /Account/ForgotPassword
        [AllowAnonymous]
        public ActionResult ForgotPassword()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ForgotPassword(ForgotPasswordViewModel model)
        {
            if (ModelState.IsValid)
            {
                var Exist = context.Users.Where(x => x.Email == model.Email).FirstOrDefault();
                if (Exist != null)
                {
                    Random r = new Random();
                    var x = r.Next(0, 1000000);

                    SendMail(model.Email, x.ToString());
                    string new_password = x.ToString();

                    User u = context.Users.Single(ud => ud.Email == model.Email);
                    u.FirstName = Exist.FirstName;
                    u.LastName = Exist.LastName;
                    u.ForgetPassword = new_password;
                    u.Phone = Exist.Phone;
                    u.DOB = Exist.DOB;
                    u.UserName = Exist.UserName;
                    u.IsActive = Exist.IsActive;
                    context.SaveChanges();

                    return RedirectToAction("Login");
                }
                else
                {
                    ViewBag.Error = "Email does not exist";
                    return View();
                }
                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                // Send an email with this link
                // string code = await UserManager.GeneratePasswordResetTokenAsync(user.Id);
                // var callbackUrl = Url.Action("ResetPassword", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);  
                // await UserManager.SendEmailAsync(user.Id, "Reset Password", "Please reset your password by clicking <a href=\"" + callbackUrl + "\">here</a>");
                // return RedirectToAction("ForgotPasswordConfirmation", "Account");
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public void SendMail(string Email, string pass)
        {
            string href = Request.Url.GetLeftPart(UriPartial.Authority) + "/Account/ResetPassword?Email=" + Email + "&ForgetPassword=" + pass;
            // context.Response.Write(string.Format("Name :{0} , Age={1}, Qualification={2}", fullName, age, qua));
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("gorab@technocodz.com");
            msg.To.Add(Email);
            msg.Subject = "Your New Password";
            msg.IsBodyHtml = true;

            msg.Body = "You Forgotten your password . Confirmation <a href=" + href + ">Confirm</a>  ";
            SmtpClient sc = new SmtpClient("mail.technocodz.com");

            sc.Port = 25;
            //  sc.Credentials = new NetworkCredential("as2647566@gmail.com", "123456qw");
            //   sc.EnableSsl = true;
            sc.Send(msg);
        }
        //
        // GET: /Account/ForgotPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ForgotPasswordConfirmation()
        {
            return View();
        }

        //
        // GET: /Account/ResetPassword
        [AllowAnonymous]
        public ActionResult ResetPassword(string Email, string ForgetPassword)
        {
            var User = context.Users.Where(x => x.Email == Email).FirstOrDefault();

            if (User != null && ForgetPassword == User.ForgetPassword)
            {
                ViewBag.EmailID = Email;
                ViewBag.ForgetPassword = ForgetPassword;
                return View();
            }
            else
            {
                return RedirectToAction("InvalidLink", "User");
            }
        }

        //
        // POST: /Account/ResetPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ResetPassword(ResetPasswordViewModel model)
        {
            string UserId = Request.Form["emailid"].ToString();
            var User = context.Users.Where(x => x.Email == UserId).FirstOrDefault();
            if (Request.Form["forget"].ToString() == User.ForgetPassword)
            {

                User.Password = Encrypt(model.Password);
                //    User.ConfirmPassword = User.Password;
                User.ForgetPassword = null;
                User.IsActive = true;
                context.Entry(User).State = EntityState.Modified;

                context.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            else
            {

                return View();
            }
        }
        //
        // GET: /Account/ResetPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ResetPasswordConfirmation()
        {
            return View();
        }
        //
        // POST: /Account/ExternalLogin
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // Request a redirect to the external login provider
            return new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        //
        // GET: /Account/SendCode
        [AllowAnonymous]
        public async Task<ActionResult> SendCode(string returnUrl, bool rememberMe)
        {
            var userId = await SignInManager.GetVerifiedUserIdAsync();
            if (userId == null)
            {
                return View("Error");
            }
            var userFactors = await UserManager.GetValidTwoFactorProvidersAsync(userId);
            var factorOptions = userFactors.Select(purpose => new SelectListItem { Text = purpose, Value = purpose }).ToList();
            return View(new SendCodeViewModel { Providers = factorOptions, ReturnUrl = returnUrl, RememberMe = rememberMe });
        }

        //
        // POST: /Account/SendCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SendCode(SendCodeViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }

            // Generate the token and send it
            if (!await SignInManager.SendTwoFactorCodeAsync(model.SelectedProvider))
            {
                return View("Error");
            }
            return RedirectToAction("VerifyCode", new { Provider = model.SelectedProvider, ReturnUrl = model.ReturnUrl, RememberMe = model.RememberMe });
        }

        //
        // GET: /Account/ExternalLoginCallback
        [AllowAnonymous]
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return RedirectToAction("Login");
            }

            // Sign in the user with this external login provider if the user already has a login
            var result = await SignInManager.ExternalSignInAsync(loginInfo, isPersistent: false);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.RequiresVerification:
                    return RedirectToAction("SendCode", new { ReturnUrl = returnUrl, RememberMe = false });
                case SignInStatus.Failure:
                default:
                    // If the user does not have an account, then prompt the user to create an account
                    ViewBag.ReturnUrl = returnUrl;
                    ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
                    return View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { Email = loginInfo.Email });
            }
        }

        //
        // POST: /Account/ExternalLoginConfirmation
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmationViewModel model, string returnUrl)
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Index", "Manage");
            }

            if (ModelState.IsValid)
            {
                // Get the information about the user from the external login provider
                var info = await AuthenticationManager.GetExternalLoginInfoAsync();
                if (info == null)
                {
                    return View("ExternalLoginFailure");
                }
                var user = new ApplicationUser { UserName = model.Email, Email = model.Email };
                var result = await UserManager.CreateAsync(user);
                if (result.Succeeded)
                {
                    result = await UserManager.AddLoginAsync(user.Id, info.Login);
                    if (result.Succeeded)
                    {
                        await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
                        return RedirectToLocal(returnUrl);
                    }
                }
                AddErrors(result);
            }

            ViewBag.ReturnUrl = returnUrl;
            return View(model);
        }

        //
        // POST: /Account/LogOff

        public ActionResult LogOff()
        {
            Session["CurrentUser"] = null;
            Session["CurrentUserId"] = "";
            Session["Admin"] = null;
            Session["AdminId"] = "";
            Session.Abandon();
            Response.Cookies.Clear();
            AuthenticationManager.SignOut();
            return RedirectToAction("index", "home");
        }

        //
        // GET: /Account/ExternalLoginFailure
        [AllowAnonymous]
        public ActionResult ExternalLoginFailure()
        {
            return View();
        }
        public static string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (_userManager != null)
                {
                    _userManager.Dispose();
                    _userManager = null;
                }

                if (_signInManager != null)
                {
                    _signInManager.Dispose();
                    _signInManager = null;
                }
            }

            base.Dispose(disposing);
        }

        #region Helpers
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            return RedirectToAction("Index", "Home");
        }

        internal class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }
        #endregion
    }
}