using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;


namespace VehicleSale.Controllers
{
    public class CustomAuthorizeAttribute : AuthorizeAttribute
    {

        public string UsersConfigKey { get; set; }
        public string RollsConfigKey { get; set; }

        protected virtual CustomPrincipal CurrentUser
        {
            get
            {

                CustomPrincipalSerializeModel model = (CustomPrincipalSerializeModel)HttpContext.Current.Session["CurrentUserData"];
                if (model == null)
                    return null;
                CustomPrincipal curretnUser = new CustomPrincipal(model.UserName);//new CustomPrincipal();// HttpContext.Current.User as CustomPrincipal;
                curretnUser.Rolls = model.Rolls;
                curretnUser.UserId = model.UserId;
                curretnUser.FirstName = model.FirstName;
                curretnUser.LastName = model.LastName;
                return curretnUser;
            }
        }

        public override void OnAuthorization(AuthorizationContext filterContext)
        {

            //if (filterContext.HttpContext.Request.IsAuthenticated)
            //{
            var authorizedUsers = ConfigurationManager.AppSettings[UsersConfigKey];
            var authorizedRolls = ConfigurationManager.AppSettings[RollsConfigKey];

            Users = String.IsNullOrEmpty(Users) ? authorizedUsers : Users;
            Roles = String.IsNullOrEmpty(Roles) ? authorizedRolls : Roles;


            if (CurrentUser == null)
            {

                var url = new UrlHelper(filterContext.RequestContext);
                var logonUrl = url.Action("Login", "Account", new { returnUrl = HttpContext.Current.Request.Url.ToString() });
                filterContext.Result = new RedirectResult(logonUrl);
            }


            else if (!String.IsNullOrEmpty(Roles))
            {
                if (!CurrentUser.IsInRoll(Roles) && CurrentUser != null)
                {
                    filterContext.Result = new RedirectToRouteResult(new
                 RouteValueDictionary(new { controller = "Error", action = "CustomError" }));

                    // base.OnAuthorization(filterContext); //returns to login url
                }
            }
        }

        //}
    }
}