using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Sockets;
using System.Threading.Tasks;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;
using System.Web.Services;
using VehicleSale.ViewModels;
using System.Net.Http;

namespace VehicleSale.Controllers
{
    public class HomeController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();
        public static string no_of_person, vehicle_feature, v_vehicleType, v_brands, v_sleeps, v_Category, v_MinPrice, v_MaxPrice, v_Lat, v_Lng;
        public static string v_vehicleTypeOF, v_brandsOF, v_sleepsOF, v_CategoryOF, v_MinPriceOF, v_MaxPriceOF, v_LatOF, v_LngOF;
        public static string v_vehicleTypeCW, v_brandsCW, v_sleepsCW, v_CategoryCW, v_MinPriceCW, v_MaxPriceCW, v_LatCW, v_LngCW;
        public static string v_vehicleTypeBL, v_brandsBL, v_sleepsBL, v_CategoryBL, v_MinPriceBL, v_MaxPriceBL, v_LatBL, v_LngBL;
        public static string v_vehicleTypeTW, v_brandsTW, v_sleepsTW, v_CategoryTW, v_MinPriceTW, v_MaxPriceTW, v_LatTW, v_LngTW;
        public ActionResult Index()
        {
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVVehicleFeatures = db.AmentiesMasters.Where(c => c.IsActive == true).ToList();
            ViewBag.RVVehicleAddimage = (from v in db.Vehicles
                                         join vi in db.VehicleImages on v.ID equals vi.VehicleID
                                         where v.IsFeatured == true
                                         group new { v, vi } by new { vi.VehicleID, v.ID } into r
                                         select new VehicleAddimage
                                         {
                                             VehicleID = r.Max(iu => iu.v.ID),
                                             ImageUrl = r.Max(iu => iu.vi.ImageUrl),
                                             CreatedOn = r.Max(iu => iu.v.CreatedOn),
                                             PublicKey = r.Max(iu => iu.vi.PublicKey),
                                             Vehicletitle = r.Max(vt => vt.v.Title),
                                             VehicleDescription = r.Max(vd => vd.v.Description.Substring(0, 200))
                                         }).OrderBy(i => i.CreatedOn).Take(2).ToList();
            ViewBag.AboutUs = db.Widgets.Where(w => w.PageId == 1 && w.WidgetId == "Widget1").FirstOrDefault().Text.Substring(0, 300);
            ViewBag.RVTestimonials = db.Testimonials.Where(c => c.isactive == true).ToList();
            ViewBag.RVTags = db.TagMasters.Where(c => c.IsActive == true).Take(5).ToList();
            ViewBag.RVFaqs = db.Faqs.Where(c => c.isactive == true).ToList().Take(4);
            ViewBag.RVRatingavrage = db.Testimonials.Where(c => c.isactive == true).Select(r => r.Rating).Average();
            return View();
        }
        public List<Banner> GetSliderImages()
        {
            return db.Banners.Where(b => b.IsActive == true).ToList();
        }

        [HttpGet]
        public ActionResult ListingPage(string sort)
        {
            // VehicleDetailsVM vehicleDetailsVM = new VehicleDetailsVM();    
            int v_persons = int.Parse(no_of_person);
            int v_vehicletype = 1;
            int v_sleep = 0;
            int v_brand = 0;
            int v_cate = 0;
            int v_minPrice = 0;
            int v_maxprice = 1000;
            double v_lat = 0;
            double v_lng = 0;
            if (!string.IsNullOrEmpty(v_vehicleType) && v_vehicleType != "undefined")
            {
                v_vehicletype = int.Parse(v_vehicleType);
            }
            if (!string.IsNullOrEmpty(v_sleeps))
            {
                v_sleep = int.Parse(v_sleeps);
            }
            if (!string.IsNullOrEmpty(v_brands))
            {
                v_brand = int.Parse(v_brands);
            }
            if (!string.IsNullOrEmpty(v_Category))
            {
                v_cate = int.Parse(v_Category);
            }
            if (!string.IsNullOrEmpty(v_MinPrice))
            {
                v_minPrice = int.Parse(v_MinPrice);
            }
            if (!string.IsNullOrEmpty(v_MaxPrice))
            {
                v_maxprice = int.Parse(v_MaxPrice);
            }
            if (!string.IsNullOrEmpty(v_Lat))
            {
                v_lat = Convert.ToDouble(v_Lat);
            }
            if (!string.IsNullOrEmpty(v_Lng))
            {
                v_lng = Convert.ToDouble(v_Lng);
            }
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> Search_Result = (from vehicle in db.Vehicles
                                                    join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                                    join models in db.Models on vehicle.ModelID equals models.ID
                                                    join category in db.Categories on vehicle.CategoryID equals category.ID
                                                    join brand in db.Brands on vehicle.BrandID equals brand.ID
                                                    join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                                    from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                           .Take(1)
                                                    .DefaultIfEmpty()
                                                        //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                                    where vehicle.Seats >= v_persons &&
                                                   vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                                    select new VehicleDetailsVM
                                                    {
                                                        ID = vehicle.ID,
                                                        vehicleCode = vehicle.VehicleCode,
                                                        vehicleTitle = vehicle.Title,
                                                        vehicleBrand = brand.Name,
                                                        vehicleCategory = category.Name,
                                                        vehicleModel = models.Name,
                                                        length = vehicle.Length,
                                                        width = vehicle.Width,
                                                        yearBuilt = vehicle.YearBuilt,
                                                        PublicKey = VehicleImage.PublicKey,
                                                        seats = vehicle.Seats,
                                                        sleeps = vehicle.Sleeps,
                                                        IsActive = vehicle.IsActive,
                                                        IsFeatured = vehicle.IsFeatured,
                                                        vehicleType = vehicleType.Name,
                                                        ImageUrl = VehicleImage.ImageUrl,
                                                        Rent = vehicleRent.Amount,
                                                        CreatedOn = vehicle.CreatedOn
                                                    }).ToList();
            string[] v_features = vehicle_feature.Split(',');
            if (v_features != null)
            {
                Search_Result = (from search in Search_Result
                                 join vehicleFeature in db.VehicleFeatures on search.ID equals vehicleFeature.VehicleID
                                 join featuresMaster in db.FeaturesMasters on vehicleFeature.FeatureID equals featuresMaster.ID
                                 join amentiesMaster in db.AmentiesMasters on featuresMaster.AmentiesID equals amentiesMaster.ID
                                 where v_features.Contains(amentiesMaster.Name.ToString())
                                 select search).ToList();
            }
            if (v_vehicletype > 1 || v_sleep > 0 || v_brand > 0 || v_cate > 0)
            {
                Search_Result = (from vehicle in db.Vehicles
                                 join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                 join models in db.Models on vehicle.ModelID equals models.ID
                                 join category in db.Categories on vehicle.CategoryID equals category.ID
                                 join brand in db.Brands on vehicle.BrandID equals brand.ID
                                 join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                 from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                             .Take(1)
                                             .DefaultIfEmpty()
                                 where vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                 select new VehicleDetailsVM
                                 {
                                     ID = vehicle.ID,
                                     vehicleCode = vehicle.VehicleCode,
                                     vehicleTitle = vehicle.Title,
                                     vehicleBrand = brand.Name,
                                     vehicleCategory = category.Name,
                                     vehicleModel = models.Name,
                                     length = vehicle.Length,
                                     width = vehicle.Width,
                                     yearBuilt = vehicle.YearBuilt,
                                     seats = vehicle.Seats,
                                     sleeps = vehicle.Sleeps,
                                     IsActive = vehicle.IsActive,
                                     IsFeatured = vehicle.IsFeatured,
                                     vehicleType = vehicleType.Name,
                                     ImageUrl = VehicleImage.ImageUrl,
                                     PublicKey = VehicleImage.PublicKey,
                                     Rent = vehicleRent.Amount,
                                     CreatedOn = vehicle.CreatedOn
                                 }).ToList();
            }
            if (v_vehicletype > 1)
            {
                string vehicletype = db.VehicleTypes.Where(v => v.ID == v_vehicletype).FirstOrDefault().Name;
                Search_Result = (from search in Search_Result
                                 where search.vehicleType == vehicletype
                                 select search).ToList();
            }
            if (v_sleep > 0)
            {
                Search_Result = (from search in Search_Result
                                 where search.sleeps >= v_sleep
                                 select search).ToList();
            }
            if (v_brand > 0)
            {
                string brand = db.Brands.Where(v => v.ID == v_brand).FirstOrDefault().Name;
                Search_Result = (from search in Search_Result
                                 where search.vehicleBrand == brand
                                 select search).ToList();
            }

            if (v_cate > 0)
            {
                string category = db.Categories.Where(v => v.ID == v_cate).FirstOrDefault().Name;
                Search_Result = (from search in Search_Result
                                 where search.vehicleCategory == category
                                 select search).ToList();
            }
            Search_Result = (from search in Search_Result
                             join vehicleRent in db.VehicleRents on search.ID equals vehicleRent.VehicleID
                             where vehicleRent.IsActive == true && vehicleRent.TermID == 1 && vehicleRent.Amount >= v_minPrice && vehicleRent.Amount <= v_maxprice
                             select search).Distinct().ToList();
            foreach (var item in Search_Result)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                Search_Result = Search_Result.OrderByDescending(o => o.CreatedOn).ToList();
            }
            if (v_lat > 0 || v_lng > 0)
            {
                Search_Result = GetAllNearestVehicles(v_lat, v_lng, Search_Result);
            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = Search_Result.Count;
            return View(Search_Result);
        }
        public static string compare_id;
        public JsonResult Compares(string Id)
        {
            compare_id = Id;
            ViewBag.Message = "Search Data";
            return Json(ViewBag.Message, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Compare()
        {
            var id = compare_id;
            var my_id = id.Split(',');
            List<VehicleDetailsVM> vm = new List<VehicleDetailsVM>();
            for (var i = 1; i < my_id.Length; i++)
            {
                int v_id = Convert.ToInt32(my_id[i]);
                VehicleDetailsVM vm1 = (from vehicle in db.Vehicles
                                        join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                        join models in db.Models on vehicle.ModelID equals models.ID
                                        join category in db.Categories on vehicle.CategoryID equals category.ID
                                        join brand in db.Brands on vehicle.BrandID equals brand.ID
                                        join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                        from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                    .Take(1)
                                                    .DefaultIfEmpty()
                                        where vehicle.ID == v_id
                                        select new VehicleDetailsVM
                                        {
                                            ID = vehicle.ID,
                                            vehicleCode = vehicle.VehicleCode,
                                            vehicleTitle = vehicle.Title,
                                            vehicleBrand = brand.Name,
                                            vehicleCategory = category.Name,
                                            vehicleModel = models.Name,
                                            length = vehicle.Length,
                                            width = vehicle.Width,
                                            yearBuilt = vehicle.YearBuilt,
                                            seats = vehicle.Seats,
                                            sleeps = vehicle.Sleeps,
                                            IsActive = vehicle.IsActive,
                                            IsFeatured = vehicle.IsFeatured,
                                            vehicleType = vehicleType.Name,
                                            ImageUrl = VehicleImage.ImageUrl,
                                            PublicKey = VehicleImage.PublicKey,
                                            Rent = vehicleRent.Amount
                                        }).FirstOrDefault();
                vm.Add(vm1);
            }

            return View(vm);
        }

        [WebMethod]
        public JsonResult GoToFilteredList(string vehicleType, string brands, string sleeps, string vehicleCategory, string MinPrice, string MaxPrice, string Lat, string Long)
        {
            v_brands = brands;
            v_vehicleType = vehicleType;
            v_sleeps = sleeps;
            v_Category = vehicleCategory;
            v_MinPrice = MinPrice;
            v_MaxPrice = MaxPrice;
            v_Lat = Lat;
            v_Lng = Long;
            ViewBag.Message = "Search Data";

            return Json(ViewBag.Message, JsonRequestBehavior.AllowGet);
        }

        [WebMethod]
        public JsonResult GoToFilteredListOF(string vehicleType, string brands, string sleeps, string vehicleCategory, string MinPrice, string MaxPrice, string Lat, string Long)
        {

            v_brandsOF = brands;
            v_vehicleTypeOF = vehicleType;
            v_sleepsOF = sleeps;
            v_CategoryOF = vehicleCategory;
            v_MinPriceOF = MinPrice;
            v_MaxPriceOF = MaxPrice;
            v_LatOF = Lat;
            v_LngOF = Long;
            ViewBag.Message = "Search Data";

            return Json(ViewBag.Message, JsonRequestBehavior.AllowGet);
        }

        [WebMethod]
        public JsonResult GoToFilteredListCW(string vehicleType, string brands, string sleeps, string vehicleCategory, string MinPrice, string MaxPrice, string Lat, string Long)
        {

            v_brandsCW = brands;
            v_vehicleTypeCW = vehicleType;
            v_sleepsCW = sleeps;
            v_CategoryCW = vehicleCategory;
            v_MinPriceCW = MinPrice;
            v_MaxPriceCW = MaxPrice;
            v_LatCW = Lat;
            v_LngCW = Long;
            ViewBag.Message = "Search Data";

            return Json(ViewBag.Message, JsonRequestBehavior.AllowGet);
        }

        [WebMethod]
        public JsonResult GoToFilteredListBL(string vehicleType, string brands, string sleeps, string vehicleCategory, string MinPrice, string MaxPrice, string Lat, string Long)
        {

            v_brandsBL = brands;
            v_vehicleTypeBL = vehicleType;
            v_sleepsBL = sleeps;
            v_CategoryBL = vehicleCategory;
            v_MinPriceBL = MinPrice;
            v_MaxPriceBL = MaxPrice;
            v_LatBL = Lat;
            v_LngBL = Long;
            ViewBag.Message = "Search Data";

            return Json(ViewBag.Message, JsonRequestBehavior.AllowGet);
        }
        [WebMethod]
        public JsonResult GoToFilteredListTW(string vehicleType, string brands, string sleeps, string vehicleCategory, string MinPrice, string MaxPrice, string Lat, string Long)
        {

            v_brandsTW = brands;
            v_vehicleTypeTW = vehicleType;
            v_sleepsTW = sleeps;
            v_CategoryTW = vehicleCategory;
            v_MinPriceTW = MinPrice;
            v_MaxPriceTW = MaxPrice;
            v_LatTW = Lat;
            v_LngTW = Long;
            ViewBag.Message = "Search Data";
            return Json(ViewBag.Message, JsonRequestBehavior.AllowGet);
        }


        [WebMethod]
        public JsonResult GoToList(string person, string feature)
        {
            no_of_person = person;
            vehicle_feature = feature;
            v_brands = "";
            v_vehicleType = "";
            v_sleeps = "";
            v_Category = "";
            v_MinPrice = "";
            v_MaxPrice = "";
            v_Lat = "";
            v_Lng = "";
            v_brandsOF = "";
            v_vehicleTypeOF = "";
            v_sleepsOF = "";
            v_CategoryOF = "";
            v_MinPriceOF = "";
            v_MaxPriceOF = "";
            v_LatOF = "";
            v_LngOF = "";
            v_brandsCW = "";
            v_vehicleTypeCW = "";
            v_sleepsCW = "";
            v_CategoryCW = "";
            v_MinPriceCW = "";
            v_MaxPriceCW = "";
            v_LatCW = "";
            v_LngCW = "";
            v_brandsBL = "";
            v_vehicleTypeBL = "";
            v_sleepsBL = "";
            v_CategoryBL = "";
            v_MinPriceBL = "";
            v_MaxPriceBL = "";
            v_LatCW = "";
            v_LngCW = "";

            ViewBag.Message = "Search Data";

            return Json(ViewBag.Message, JsonRequestBehavior.AllowGet);
        }
        public ActionResult VehicleListing(string person, string type, string feature)
        {
            //List<VehicleDetailsVM>
            return View();
        }
        public ActionResult VehicleDetails()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public JsonResult AddToFavourites(int AdvertismentId)
        {
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            Wishlist wishList = new Wishlist();
            wishList.Userid = User.UserId;
            wishList.Vehicleid = AdvertismentId;
            wishList.Createdon = DateTime.Now;
            wishList.Updatedon = DateTime.Now;
            wishList.isactive = true;
            wishList.IpAddress = GetLocalIPAddress();
            var Result = db.Wishlists.Add(wishList);
            db.SaveChanges();

            return Json(Result);

        }
        public static string GetLocalIPAddress()
        {
            var host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (var ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    return ip.ToString();
                }
            }
            throw new Exception("Local IP Address Not Found!");
        }
        //RemoveFromFavourites
        public JsonResult RemoveFromFavourites(int AdvertismentId)
        {
            try
            {
                var User = (ViewModels.RoleVM)Session["CurrentUser"];
                Wishlist wishList = db.Wishlists.Where(wl => wl.Userid == User.UserId && wl.Vehicleid == AdvertismentId).FirstOrDefault();
                if (wishList != null)
                {
                    db.Wishlists.Remove(wishList);
                    db.SaveChanges();
                }
                return Json(new { Result = "OK" });
            }


            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public ActionResult WishListing()
        {
            List<WishlistVM> wishlistVM = new List<ViewModels.WishlistVM>();
            var User = (ViewModels.RoleVM)Session["CurrentUser"];

            if (User != null)
            {
                var wishList = (from vehicle in db.Vehicles
                                join wishlist in db.Wishlists on vehicle.ID equals wishlist.Vehicleid
                                from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                               .Take(1)
                                               .DefaultIfEmpty()
                                where wishlist.Userid == User.UserId
                                select new WishlistVM
                                {
                                    ID = wishlist.Id,
                                    Title = vehicle.Title,
                                    ImageUrl = VehicleImage.ImageUrl,
                                    vehicleID = vehicle.ID,
                                    PublicKey = VehicleImage.PublicKey
                                }).ToList();
                wishlistVM = wishList;
            }
            else
            {
                string CurrentIP = GetLocalIPAddress();
                var wishList = (from vehicle in db.Vehicles
                                join wishlist in db.Wishlists on vehicle.ID equals wishlist.Vehicleid
                                from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                               .Take(1)
                                               .DefaultIfEmpty()
                                where wishlist.IpAddress == CurrentIP
                                select new WishlistVM
                                {
                                    ID = wishlist.Id,
                                    Title = vehicle.Title,
                                    ImageUrl = VehicleImage.ImageUrl,
                                    vehicleID = vehicle.ID,
                                    PublicKey = VehicleImage.PublicKey
                                }).ToList();
                wishlistVM = wishList;
            }
            return View(wishlistVM);
        }
        public JsonResult RemoveFromWishList(int wishId)
        {
            try
            {
                var User = (ViewModels.RoleVM)Session["CurrentUser"];
                if (User != null)
                {
                    Wishlist wishList = db.Wishlists.Where(wl => wl.Userid == User.UserId && wl.Id == wishId).FirstOrDefault();
                    if (wishList != null)
                    {
                        db.Wishlists.Remove(wishList);
                        db.SaveChanges();
                    }
                    return Json(new { Result = "OK" });
                }
                else
                {
                    string CurrentIP = GetLocalIPAddress();
                    Wishlist wishList = db.Wishlists.Where(wl => wl.IpAddress == CurrentIP && wl.Id == wishId).FirstOrDefault();
                    if (wishList != null)
                    {
                        db.Wishlists.Remove(wishList);
                        db.SaveChanges();
                    }
                    return Json(new { Result = "OK" });
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        [HttpPost]
        public ActionResult NewsletterSubscribe(String Email)
        {
            if (!string.IsNullOrEmpty(Email))
            {
                var Emailid = (from Emails in db.Newsletters
                               where Emails.Email == Email
                               select new
                               {
                                   Emails.Email
                               }).FirstOrDefault();
                if (Emailid == null)
                {
                    Newsletter newsletter = new Newsletter();
                    newsletter.Email = Email.ToLower();
                    newsletter.createdon = DateTime.Now;
                    newsletter.updatedon = DateTime.Now;
                    newsletter.isactive = true;
                    db.Newsletters.Add(newsletter);
                    db.SaveChanges();
                    SendEmail(Email.ToLower(), "Ace RV Newsletter Subscription", "Thank you for Subscription");
                    return Content("true");
                }
                return Content("Already");
            }

            return Content("false");
        }
        [HttpPost]
        public ActionResult ContactRequestDetails(string email, string phone, string web, string fax, string address )
        {
            if (!string.IsNullOrEmpty(email))
            {
                ContactUsRequestDetail contactUsRequestDetail = new ContactUsRequestDetail();
                contactUsRequestDetail.Email = email.ToLower();
                contactUsRequestDetail.Website = web;
                contactUsRequestDetail.Fax = fax;
                contactUsRequestDetail.Phone = phone;
                contactUsRequestDetail.Address = address;
                contactUsRequestDetail.IsActive = true;
                db.ContactUsRequestDetails.Add(contactUsRequestDetail);
                db.SaveChanges();
                return Content("true");
            }
            return Content("false");
        }
        [HttpPost]
        public ActionResult MessageSenderDetails(string Name, string Email, string Phone, string Message)
        {
            if (!string.IsNullOrEmpty(Email))
            {
                MessageSender messageSender = new MessageSender();
                messageSender.Email = Email.ToLower();
                messageSender.Name = Name;
                messageSender.Message = Message;
                messageSender.Phone = Phone;
                messageSender.IsActive = true;
                db.MessageSenders.Add(messageSender);
                db.SaveChanges();
                return Content("true");
            }
            return Content("false");
        }


        public ActionResult AboutUs()
        {
            var model = db.Pages.Where(x => x.Name == "AboutUs").FirstOrDefault();
            return View(model);
        }

        public ActionResult TermsAndConditions()
        {
            var model = db.Pages.Where(x => x.Name == "TermsAndConditions").FirstOrDefault();
            return View(model);
        }

        public ActionResult RefundPolicy()
        {
            var model = db.Pages.Where(x => x.Name == "RefundPolicy").FirstOrDefault();
            return View(model);
        }

        public ActionResult FAQ()
        {
            var model = db.Faqs.Where(x => x.isactive == true).ToList();
            return View(model);
        }

        public ActionResult OurFleetListing(string sort)
        {
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> model = (from vehicle in db.Vehicles
                                            join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                            join models in db.Models on vehicle.ModelID equals models.ID
                                            join category in db.Categories on vehicle.CategoryID equals category.ID
                                            join brand in db.Brands on vehicle.BrandID equals brand.ID
                                            join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                            from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                   .Take(1)
                                            .DefaultIfEmpty()
                                                //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                            where vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                            select new VehicleDetailsVM
                                            {
                                                ID = vehicle.ID,
                                                vehicleCode = vehicle.VehicleCode,
                                                vehicleTitle = vehicle.Title,
                                                vehicleBrand = brand.Name,
                                                vehicleCategory = category.Name,
                                                vehicleModel = models.Name,
                                                length = vehicle.Length,
                                                width = vehicle.Width,
                                                yearBuilt = vehicle.YearBuilt,
                                                PublicKey = VehicleImage.PublicKey,
                                                seats = vehicle.Seats,
                                                sleeps = vehicle.Sleeps,
                                                IsActive = vehicle.IsActive,
                                                IsFeatured = vehicle.IsFeatured,
                                                vehicleType = vehicleType.Name,
                                                ImageUrl = VehicleImage.ImageUrl,
                                                Rent = vehicleRent.Amount,
                                                CreatedOn = vehicle.CreatedOn
                                            }).Distinct().ToList();
            foreach (var item in model)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                model = model.OrderByDescending(o => o.CreatedOn).ToList();
            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = model.Count;
            return View(model);
        }

        public ActionResult OurFleetListingSearch(string sort)
        {
            int v_vehicletype = 1;
            int v_sleep = 0;
            int v_brand = 0;
            int v_cate = 0;
            int v_minPrice = 0;
            int v_maxprice = 1000;
            double v_lat = 0;
            double v_lng = 0;

            if (!string.IsNullOrEmpty(v_vehicleTypeOF) && v_vehicleTypeOF != "undefined")
            {
                v_vehicletype = int.Parse(v_vehicleTypeOF);
            }
            if (!string.IsNullOrEmpty(v_sleepsOF))
            {
                v_sleep = int.Parse(v_sleepsOF);
            }
            if (!string.IsNullOrEmpty(v_brandsOF))
            {
                v_brand = int.Parse(v_brandsOF);
            }
            if (!string.IsNullOrEmpty(v_CategoryOF))
            {
                v_cate = int.Parse(v_CategoryOF);
            }
            if (!string.IsNullOrEmpty(v_MinPriceOF))
            {
                v_minPrice = int.Parse(v_MinPriceOF);
            }
            if (!string.IsNullOrEmpty(v_MaxPriceOF))
            {
                v_maxprice = int.Parse(v_MaxPriceOF);
            }
            if (!string.IsNullOrEmpty(v_LatOF))
            {
                v_lat = Convert.ToDouble(v_LatOF);
            }
            if (!string.IsNullOrEmpty(v_LngOF))
            {
                v_lng = Convert.ToDouble(v_LngOF);
            }
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> model = (from vehicle in db.Vehicles
                                            join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                            join models in db.Models on vehicle.ModelID equals models.ID
                                            join category in db.Categories on vehicle.CategoryID equals category.ID
                                            join brand in db.Brands on vehicle.BrandID equals brand.ID
                                            join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                            from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                   .Take(1)
                                            .DefaultIfEmpty()
                                                //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                            where vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                            select new VehicleDetailsVM
                                            {
                                                ID = vehicle.ID,
                                                vehicleCode = vehicle.VehicleCode,
                                                vehicleTitle = vehicle.Title,
                                                vehicleBrand = brand.Name,
                                                vehicleCategory = category.Name,
                                                vehicleModel = models.Name,
                                                length = vehicle.Length,
                                                width = vehicle.Width,
                                                yearBuilt = vehicle.YearBuilt,
                                                PublicKey = VehicleImage.PublicKey,
                                                seats = vehicle.Seats,
                                                sleeps = vehicle.Sleeps,
                                                IsActive = vehicle.IsActive,
                                                IsFeatured = vehicle.IsFeatured,
                                                vehicleType = vehicleType.Name,
                                                ImageUrl = VehicleImage.ImageUrl,
                                                Rent = vehicleRent.Amount,
                                                CreatedOn = vehicle.CreatedOn,
                                                longitude = vehicle.Longitude,
                                                latitude = vehicle.Latitude
                                            }).Distinct().ToList();

            if (v_vehicletype > 1 || v_sleep > 0 || v_brand > 0 || v_cate > 0 || v_lat > 0 || v_lng > 0)
            {
                model = (from vehicle in db.Vehicles
                         join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                         join models in db.Models on vehicle.ModelID equals models.ID
                         join category in db.Categories on vehicle.CategoryID equals category.ID
                         join brand in db.Brands on vehicle.BrandID equals brand.ID
                         join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                         from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                     .Take(1)
                                     .DefaultIfEmpty()
                         where vehicleRent.IsActive == true && vehicleRent.TermID == 1
                         select new VehicleDetailsVM
                         {
                             ID = vehicle.ID,
                             vehicleCode = vehicle.VehicleCode,
                             vehicleTitle = vehicle.Title,
                             vehicleBrand = brand.Name,
                             vehicleCategory = category.Name,
                             vehicleModel = models.Name,
                             length = vehicle.Length,
                             width = vehicle.Width,
                             yearBuilt = vehicle.YearBuilt,
                             seats = vehicle.Seats,
                             sleeps = vehicle.Sleeps,
                             IsActive = vehicle.IsActive,
                             IsFeatured = vehicle.IsFeatured,
                             vehicleType = vehicleType.Name,
                             ImageUrl = VehicleImage.ImageUrl,
                             PublicKey = VehicleImage.PublicKey,
                             Rent = vehicleRent.Amount,
                             CreatedOn = vehicle.CreatedOn,
                             longitude = vehicle.Longitude,
                             latitude = vehicle.Latitude
                         }).ToList();
            }
            if (v_vehicletype > 0)
            {
                string vehicletype = db.VehicleTypes.Where(v => v.ID == v_vehicletype).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleType == vehicletype
                         select search).ToList();
            }
            if (v_sleep > 0)
            {
                model = (from search in model
                         where search.sleeps >= v_sleep
                         select search).ToList();
            }
            if (v_brand > 0)
            {
                string brand = db.Brands.Where(v => v.ID == v_brand).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleBrand == brand
                         select search).ToList();
            }

            if (v_cate > 0)
            {
                string category = db.Categories.Where(v => v.ID == v_cate).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleCategory == category
                         select search).ToList();
            }

            model = (from search in model
                     join vehicleRent in db.VehicleRents on search.ID equals vehicleRent.VehicleID
                     where vehicleRent.IsActive == true && vehicleRent.TermID == 1 && vehicleRent.Amount >= v_minPrice && vehicleRent.Amount <= v_maxprice
                     select search).Distinct().ToList();
            foreach (var item in model)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                model = model.OrderByDescending(o => o.CreatedOn).ToList();
            }
            if (v_lat > 0 || v_lng > 0)
            {
                model = GetAllNearestVehicles(v_lat, v_lng, model);

            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = model.Count;
            return View("OurFleetListing", model);
        }

        public ActionResult CategoryWiseFleetListing(string sort, int? id)
        {

            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> model = (from vehicle in db.Vehicles
                                            join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                            join models in db.Models on vehicle.ModelID equals models.ID
                                            join category in db.Categories on vehicle.CategoryID equals category.ID
                                            join brand in db.Brands on vehicle.BrandID equals brand.ID
                                            join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                            from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                   .Take(1)
                                            .DefaultIfEmpty()
                                                //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                            where category.ID == id && vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                            select new VehicleDetailsVM
                                            {
                                                ID = vehicle.ID,
                                                vehicleCode = vehicle.VehicleCode,
                                                vehicleTitle = vehicle.Title,
                                                vehicleBrand = brand.Name,
                                                vehicleCategory = category.Name,
                                                vehicleModel = models.Name,
                                                length = vehicle.Length,
                                                width = vehicle.Width,
                                                yearBuilt = vehicle.YearBuilt,
                                                PublicKey = VehicleImage.PublicKey,
                                                seats = vehicle.Seats,
                                                sleeps = vehicle.Sleeps,
                                                IsActive = vehicle.IsActive,
                                                IsFeatured = vehicle.IsFeatured,
                                                vehicleType = vehicleType.Name,
                                                ImageUrl = VehicleImage.ImageUrl,
                                                Rent = vehicleRent.Amount,
                                                CreatedOn = vehicle.CreatedOn
                                            }).Distinct().ToList();

            foreach (var item in model)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                model = model.OrderByDescending(o => o.CreatedOn).ToList();
            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = model.Count;
            return View("", model);
        }

        public ActionResult CategoryWiseFleetListingSearch(string sort, int? id)
        {
            int v_vehicletype = 1;
            int v_sleep = 0;
            int v_brand = 0;
            int v_cate = 0;
            int v_minPrice = 0;
            int v_maxprice = 1000;
            double v_lat = 0;
            double v_lng = 0;
            if (!string.IsNullOrEmpty(v_vehicleTypeCW) && v_vehicleTypeCW != "undefined")
            {
                v_vehicletype = int.Parse(v_vehicleTypeCW);
            }
            if (!string.IsNullOrEmpty(v_sleepsCW))
            {
                v_sleep = int.Parse(v_sleepsCW);
            }
            if (!string.IsNullOrEmpty(v_brandsCW))
            {
                v_brand = int.Parse(v_brandsCW);
            }
            if (!string.IsNullOrEmpty(v_CategoryCW))
            {
                v_cate = int.Parse(v_CategoryCW);
            }
            if (!string.IsNullOrEmpty(v_MinPriceCW))
            {
                v_minPrice = int.Parse(v_MinPriceCW);
            }
            if (!string.IsNullOrEmpty(v_MaxPriceCW))
            {
                v_maxprice = int.Parse(v_MaxPriceCW);
            }
            if (!string.IsNullOrEmpty(v_LatCW))
            {
                v_lat = Convert.ToDouble(v_LatCW);
            }
            if (!string.IsNullOrEmpty(v_LngCW))
            {
                v_lng = Convert.ToDouble(v_LngCW);
            }
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> model = (from vehicle in db.Vehicles
                                            join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                            join models in db.Models on vehicle.ModelID equals models.ID
                                            join category in db.Categories on vehicle.CategoryID equals category.ID
                                            join brand in db.Brands on vehicle.BrandID equals brand.ID
                                            join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                            from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                   .Take(1)
                                            .DefaultIfEmpty()
                                                //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                            where category.ID == id && vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                            select new VehicleDetailsVM
                                            {
                                                ID = vehicle.ID,
                                                vehicleCode = vehicle.VehicleCode,
                                                vehicleTitle = vehicle.Title,
                                                vehicleBrand = brand.Name,
                                                vehicleCategory = category.Name,
                                                vehicleModel = models.Name,
                                                length = vehicle.Length,
                                                width = vehicle.Width,
                                                yearBuilt = vehicle.YearBuilt,
                                                PublicKey = VehicleImage.PublicKey,
                                                seats = vehicle.Seats,
                                                sleeps = vehicle.Sleeps,
                                                IsActive = vehicle.IsActive,
                                                IsFeatured = vehicle.IsFeatured,
                                                vehicleType = vehicleType.Name,
                                                ImageUrl = VehicleImage.ImageUrl,
                                                Rent = vehicleRent.Amount,
                                                CreatedOn = vehicle.CreatedOn
                                            }).ToList();
            if (v_vehicletype > 1 || v_sleep > 0 || v_brand > 0 || v_cate > 0)
            {
                model = (from vehicle in db.Vehicles
                         join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                         join models in db.Models on vehicle.ModelID equals models.ID
                         join category in db.Categories on vehicle.CategoryID equals category.ID
                         join brand in db.Brands on vehicle.BrandID equals brand.ID
                         join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                         from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                     .Take(1)
                                     .DefaultIfEmpty()
                         where vehicleRent.IsActive == true && vehicleRent.TermID == 1
                         select new VehicleDetailsVM
                         {
                             ID = vehicle.ID,
                             vehicleCode = vehicle.VehicleCode,
                             vehicleTitle = vehicle.Title,
                             vehicleBrand = brand.Name,
                             vehicleCategory = category.Name,
                             vehicleModel = models.Name,
                             length = vehicle.Length,
                             width = vehicle.Width,
                             yearBuilt = vehicle.YearBuilt,
                             seats = vehicle.Seats,
                             sleeps = vehicle.Sleeps,
                             IsActive = vehicle.IsActive,
                             IsFeatured = vehicle.IsFeatured,
                             vehicleType = vehicleType.Name,
                             ImageUrl = VehicleImage.ImageUrl,
                             PublicKey = VehicleImage.PublicKey,
                             Rent = vehicleRent.Amount,
                             CreatedOn = vehicle.CreatedOn
                         }).ToList();
            }
            if (v_vehicletype > 0)
            {
                string vehicletype = db.VehicleTypes.Where(v => v.ID == v_vehicletype).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleType == vehicletype
                         select search).ToList();
            }
            if (v_sleep > 0)
            {
                model = (from search in model
                         where search.sleeps >= v_sleep
                         select search).ToList();
            }
            if (v_brand > 0)
            {
                string brand = db.Brands.Where(v => v.ID == v_brand).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleBrand == brand
                         select search).ToList();
            }

            if (v_cate > 0)
            {
                string category = db.Categories.Where(v => v.ID == v_cate).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleCategory == category
                         select search).ToList();
            }
            model = (from search in model
                     join vehicleRent in db.VehicleRents on search.ID equals vehicleRent.VehicleID
                     where vehicleRent.IsActive == true && vehicleRent.TermID == 1 && vehicleRent.Amount >= v_minPrice && vehicleRent.Amount <= v_maxprice
                     select search).Distinct().ToList();
            foreach (var item in model)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                model = model.OrderByDescending(o => o.CreatedOn).ToList();
            }
            if (v_lat > 0 || v_lng > 0)
            {
                model = GetAllNearestVehicles(v_lat, v_lng, model);

            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = model.Count;
            return View("CategoryWiseFleetListing", model);
        }

        public ActionResult BuyListing(string sort)
        {
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> model = (from vehicle in db.Vehicles

                                            join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                            join models in db.Models on vehicle.ModelID equals models.ID
                                            join category in db.Categories on vehicle.CategoryID equals category.ID
                                            join brand in db.Brands on vehicle.BrandID equals brand.ID
                                            join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                            from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                   .Take(1)
                                            .DefaultIfEmpty()
                                                //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                            where vehicleRent.IsActive == true && vehicleRent.TermID == 1 && vehicle.IsSaleable == true
                                            select new VehicleDetailsVM
                                            {
                                                ID = vehicle.ID,
                                                vehicleCode = vehicle.VehicleCode,
                                                vehicleTitle = vehicle.Title,
                                                vehicleBrand = brand.Name,
                                                vehicleCategory = category.Name,
                                                vehicleModel = models.Name,
                                                length = vehicle.Length,
                                                width = vehicle.Width,
                                                yearBuilt = vehicle.YearBuilt,
                                                PublicKey = VehicleImage.PublicKey,
                                                seats = vehicle.Seats,
                                                sleeps = vehicle.Sleeps,
                                                IsActive = vehicle.IsActive,
                                                IsFeatured = vehicle.IsFeatured,
                                                vehicleType = vehicleType.Name,
                                                ImageUrl = VehicleImage.ImageUrl,
                                                Rent = vehicleRent.Amount,
                                                CreatedOn = vehicle.CreatedOn,
                                                IsSaleable = vehicle.IsSaleable,
                                                SalePrice = vehicle.SalePrice
                                            }).AsEnumerable().Distinct().ToList();
            List<VehicleDetailsVM> distinticModel = model
                                                .Select(VehicleDetail => VehicleDetail.ID)
                                                .Distinct()
                                                .Select(id => model.First(VehicleDetail => VehicleDetail.ID == id))
                                                .ToList();
            foreach (var item in distinticModel)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                distinticModel = distinticModel.OrderByDescending(o => o.CreatedOn).ToList();
            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = distinticModel.Count;
            return View(distinticModel);
        }

        public ActionResult BuyListingSearch(string sort)
        {
            int v_vehicletype = 1;
            int v_sleep = 0;
            int v_brand = 0;
            int v_cate = 0;
            int v_minPrice = 0;
            int v_maxprice = 1000;
            double v_lat = 0;
            double v_lng = 0;
            if (!string.IsNullOrEmpty(v_vehicleTypeBL) && v_vehicleTypeBL != "undefined")
            {
                v_vehicletype = int.Parse(v_vehicleTypeBL);
            }
            if (!string.IsNullOrEmpty(v_sleepsBL))
            {
                v_sleep = int.Parse(v_sleepsBL);
            }
            if (!string.IsNullOrEmpty(v_brandsBL))
            {
                v_brand = int.Parse(v_brandsBL);
            }
            if (!string.IsNullOrEmpty(v_CategoryBL))
            {
                v_cate = int.Parse(v_CategoryBL);
            }
            if (!string.IsNullOrEmpty(v_MinPriceBL))
            {
                v_minPrice = int.Parse(v_MinPriceBL);
            }
            if (!string.IsNullOrEmpty(v_MaxPriceBL))
            {
                v_maxprice = int.Parse(v_MaxPriceBL);
            }
            if (!string.IsNullOrEmpty(v_LatBL))
            {
                v_lat = Convert.ToDouble(v_LatBL);
            }
            if (!string.IsNullOrEmpty(v_LngBL))
            {
                v_lng = Convert.ToDouble(v_LngBL);
            }
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> model = (from vehicle in db.Vehicles
                                            join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                            join models in db.Models on vehicle.ModelID equals models.ID
                                            join category in db.Categories on vehicle.CategoryID equals category.ID
                                            join brand in db.Brands on vehicle.BrandID equals brand.ID
                                            join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                            from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                   .Take(1)
                                            .DefaultIfEmpty()
                                                //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                            where vehicle.IsSaleable == true && vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                            select new VehicleDetailsVM
                                            {
                                                ID = vehicle.ID,
                                                vehicleCode = vehicle.VehicleCode,
                                                vehicleTitle = vehicle.Title,
                                                vehicleBrand = brand.Name,
                                                vehicleCategory = category.Name,
                                                vehicleModel = models.Name,
                                                length = vehicle.Length,
                                                width = vehicle.Width,
                                                yearBuilt = vehicle.YearBuilt,
                                                PublicKey = VehicleImage.PublicKey,
                                                seats = vehicle.Seats,
                                                sleeps = vehicle.Sleeps,
                                                IsActive = vehicle.IsActive,
                                                IsFeatured = vehicle.IsFeatured,
                                                vehicleType = vehicleType.Name,
                                                ImageUrl = VehicleImage.ImageUrl,
                                                Rent = vehicleRent.Amount,
                                                CreatedOn = vehicle.CreatedOn,
                                                IsSaleable = vehicle.IsSaleable,
                                                SalePrice = vehicle.SalePrice
                                            }).ToList();
            if (v_vehicletype > 1 || v_sleep > 0 || v_brand > 0 || v_cate > 0)
            {
                model = (from vehicle in db.Vehicles
                         join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                         join models in db.Models on vehicle.ModelID equals models.ID
                         join category in db.Categories on vehicle.CategoryID equals category.ID
                         join brand in db.Brands on vehicle.BrandID equals brand.ID
                         join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                         from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                     .Take(1)
                                     .DefaultIfEmpty()
                         where vehicle.IsSaleable == true && vehicleRent.IsActive == true && vehicleRent.TermID == 1
                         select new VehicleDetailsVM
                         {
                             ID = vehicle.ID,
                             vehicleCode = vehicle.VehicleCode,
                             vehicleTitle = vehicle.Title,
                             vehicleBrand = brand.Name,
                             vehicleCategory = category.Name,
                             vehicleModel = models.Name,
                             length = vehicle.Length,
                             width = vehicle.Width,
                             yearBuilt = vehicle.YearBuilt,
                             seats = vehicle.Seats,
                             sleeps = vehicle.Sleeps,
                             IsActive = vehicle.IsActive,
                             IsFeatured = vehicle.IsFeatured,
                             vehicleType = vehicleType.Name,
                             ImageUrl = VehicleImage.ImageUrl,
                             PublicKey = VehicleImage.PublicKey,
                             Rent = vehicleRent.Amount,
                             CreatedOn = vehicle.CreatedOn,
                             IsSaleable = vehicle.IsSaleable,
                             SalePrice = vehicle.SalePrice
                         }).ToList();
            }
            if (v_vehicletype > 0)
            {
                string vehicletype = db.VehicleTypes.Where(v => v.ID == v_vehicletype).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleType == vehicletype
                         select search).ToList();
            }
            if (v_sleep > 0)
            {
                model = (from search in model
                         where search.sleeps >= v_sleep
                         select search).ToList();
            }
            if (v_brand > 0)
            {
                string brand = db.Brands.Where(v => v.ID == v_brand).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleBrand == brand
                         select search).ToList();
            }

            if (v_cate > 0)
            {
                string category = db.Categories.Where(v => v.ID == v_cate).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleCategory == category
                         select search).ToList();
            }
            model = (from search in model
                     join vehicleRent in db.VehicleRents on search.ID equals vehicleRent.VehicleID
                     where vehicleRent.IsActive == true && vehicleRent.TermID == 1 && vehicleRent.Amount >= v_minPrice && vehicleRent.Amount <= v_maxprice
                     select search).Distinct().ToList();
            foreach (var item in model)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                model = model.OrderByDescending(o => o.CreatedOn).ToList();
            }
            if (v_lat > 0 || v_lng > 0)
            {
                model = GetAllNearestVehicles(v_lat, v_lng, model);

            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = model.Count;

            return View("CategoryWiseFleetListing", model);
        }

        public List<VehicleDetailsVM> GetAllNearestVehicles(double currentLatitude, double currentLongitude, List<VehicleDetailsVM> model)
        {
            List<VehicleDetailsVM> vehicleDetails = new List<VehicleDetailsVM>();

            foreach (var vehicle in model)
            {
                double distance = Distance(currentLatitude, currentLongitude, Convert.ToDouble(vehicle.latitude), Convert.ToDouble(vehicle.longitude));
                if (distance < 25)          //nearbyplaces which are within 25 kms 
                {

                    vehicleDetails.Add(vehicle);
                }
            }
            return vehicleDetails;
        }

        private double Distance(double lat1, double lon1, double lat2, double lon2)
        {
            double theta = lon1 - lon2;
            double dist = Math.Sin(deg2rad(lat1)) * Math.Sin(deg2rad(lat2)) + Math.Cos(deg2rad(lat1)) * Math.Cos(deg2rad(lat2)) * Math.Cos(deg2rad(theta));
            dist = Math.Acos(dist);
            dist = rad2deg(dist);
            dist = (dist * 60 * 1.1515) / 0.6213711922;          //miles to kms
            return (dist);
        }

        private double deg2rad(double deg)
        {
            return (deg * Math.PI / 180.0);
        }

        private double rad2deg(double rad)
        {
            return (rad * 180.0 / Math.PI);
        }
        public ActionResult TagWiseFleetListing(string sort, int? id)
        {
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> model = (from vehicle in db.Vehicles
                                            join vehicleTags in db.VehicleTags on vehicle.ID equals vehicleTags.VehicleID
                                            join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                            join models in db.Models on vehicle.ModelID equals models.ID
                                            join category in db.Categories on vehicle.CategoryID equals category.ID
                                            join brand in db.Brands on vehicle.BrandID equals brand.ID
                                            join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID

                                            from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                   .Take(1)
                                            .DefaultIfEmpty()
                                                //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                            where vehicleTags.TagID == id && vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                            select new VehicleDetailsVM
                                            {
                                                ID = vehicle.ID,
                                                vehicleCode = vehicle.VehicleCode,
                                                vehicleTitle = vehicle.Title,
                                                vehicleBrand = brand.Name,
                                                vehicleCategory = category.Name,
                                                vehicleModel = models.Name,
                                                length = vehicle.Length,
                                                width = vehicle.Width,
                                                yearBuilt = vehicle.YearBuilt,
                                                PublicKey = VehicleImage.PublicKey,
                                                seats = vehicle.Seats,
                                                sleeps = vehicle.Sleeps,
                                                IsActive = vehicle.IsActive,
                                                IsFeatured = vehicle.IsFeatured,
                                                vehicleType = vehicleType.Name,
                                                ImageUrl = VehicleImage.ImageUrl,
                                                Rent = vehicleRent.Amount,
                                                CreatedOn = vehicle.CreatedOn
                                            }).Distinct().ToList();
            foreach (var item in model)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                model = model.OrderByDescending(o => o.CreatedOn).ToList();
            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = model.Count;
            return View(model);
        }

        public ActionResult TagWiseFleetListingSearch(string sort, int? id)
        {
            int v_vehicletype = 1;
            int v_sleep = 0;
            int v_brand = 0;
            int v_cate = 0;
            int v_minPrice = 0;
            int v_maxprice = 1000;
            double v_lat = 0;
            double v_lng = 0;

            if (!string.IsNullOrEmpty(v_vehicleTypeTW) && v_vehicleTypeTW != "undefined")
            {
                v_vehicletype = int.Parse(v_vehicleTypeTW);
            }
            if (!string.IsNullOrEmpty(v_sleepsTW))
            {
                v_sleep = int.Parse(v_sleepsTW);
            }
            if (!string.IsNullOrEmpty(v_brandsTW))
            {
                v_brand = int.Parse(v_brandsTW);
            }
            if (!string.IsNullOrEmpty(v_CategoryTW))
            {
                v_cate = int.Parse(v_CategoryTW);
            }
            if (!string.IsNullOrEmpty(v_MinPriceTW))
            {
                v_minPrice = int.Parse(v_MinPriceTW);
            }
            if (!string.IsNullOrEmpty(v_MaxPriceTW))
            {
                v_maxprice = int.Parse(v_MaxPriceTW);
            }
            if (!string.IsNullOrEmpty(v_LatTW))
            {
                v_lat = Convert.ToDouble(v_LatTW);
            }
            if (!string.IsNullOrEmpty(v_LngTW))
            {
                v_lng = Convert.ToDouble(v_LngTW);
            }
            var User = (ViewModels.RoleVM)Session["CurrentUser"];
            List<VehicleDetailsVM> model = (from vehicle in db.Vehicles
                                            join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                            join models in db.Models on vehicle.ModelID equals models.ID
                                            join category in db.Categories on vehicle.CategoryID equals category.ID
                                            join brand in db.Brands on vehicle.BrandID equals brand.ID
                                            join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                                            from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                                   .Take(1)
                                            .DefaultIfEmpty()
                                                //join VehicleFeature in db.VehicleFeatures on vehicle.ID equals VehicleFeature.VehicleID join FeaturesMaster in db.FeaturesMasters on VehicleFeature.FeatureID equals FeaturesMaster.ID
                                            where vehicleRent.IsActive == true && vehicleRent.TermID == 1
                                            select new VehicleDetailsVM
                                            {
                                                ID = vehicle.ID,
                                                vehicleCode = vehicle.VehicleCode,
                                                vehicleTitle = vehicle.Title,
                                                vehicleBrand = brand.Name,
                                                vehicleCategory = category.Name,
                                                vehicleModel = models.Name,
                                                length = vehicle.Length,
                                                width = vehicle.Width,
                                                yearBuilt = vehicle.YearBuilt,
                                                PublicKey = VehicleImage.PublicKey,
                                                seats = vehicle.Seats,
                                                sleeps = vehicle.Sleeps,
                                                IsActive = vehicle.IsActive,
                                                IsFeatured = vehicle.IsFeatured,
                                                vehicleType = vehicleType.Name,
                                                ImageUrl = VehicleImage.ImageUrl,
                                                Rent = vehicleRent.Amount,
                                                CreatedOn = vehicle.CreatedOn,
                                                longitude = vehicle.Longitude,
                                                latitude = vehicle.Latitude
                                            }).Distinct().ToList();

            if (v_vehicletype > 1 || v_sleep > 0 || v_brand > 0 || v_cate > 0 || v_lat > 0 || v_lng > 0)
            {
                model = (from vehicle in db.Vehicles
                         join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                         join models in db.Models on vehicle.ModelID equals models.ID
                         join category in db.Categories on vehicle.CategoryID equals category.ID
                         join brand in db.Brands on vehicle.BrandID equals brand.ID
                         join vehicleRent in db.VehicleRents on vehicle.ID equals vehicleRent.VehicleID
                         from VehicleImage in db.VehicleImages.Where(o => vehicle.ID == o.VehicleID && o.IsActive == true)
                                     .Take(1)
                                     .DefaultIfEmpty()
                         where vehicleRent.IsActive == true && vehicleRent.TermID == 1
                         select new VehicleDetailsVM
                         {
                             ID = vehicle.ID,
                             vehicleCode = vehicle.VehicleCode,
                             vehicleTitle = vehicle.Title,
                             vehicleBrand = brand.Name,
                             vehicleCategory = category.Name,
                             vehicleModel = models.Name,
                             length = vehicle.Length,
                             width = vehicle.Width,
                             yearBuilt = vehicle.YearBuilt,
                             seats = vehicle.Seats,
                             sleeps = vehicle.Sleeps,
                             IsActive = vehicle.IsActive,
                             IsFeatured = vehicle.IsFeatured,
                             vehicleType = vehicleType.Name,
                             ImageUrl = VehicleImage.ImageUrl,
                             PublicKey = VehicleImage.PublicKey,
                             Rent = vehicleRent.Amount,
                             CreatedOn = vehicle.CreatedOn,
                             longitude = vehicle.Longitude,
                             latitude = vehicle.Latitude
                         }).ToList();
            }
            if (v_vehicletype > 0)
            {
                string vehicletype = db.VehicleTypes.Where(v => v.ID == v_vehicletype).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleType == vehicletype
                         select search).ToList();
            }
            if (v_sleep > 0)
            {
                model = (from search in model
                         where search.sleeps >= v_sleep
                         select search).ToList();
            }
            if (v_brand > 0)
            {
                string brand = db.Brands.Where(v => v.ID == v_brand).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleBrand == brand
                         select search).ToList();
            }

            if (v_cate > 0)
            {
                string category = db.Categories.Where(v => v.ID == v_cate).FirstOrDefault().Name;
                model = (from search in model
                         where search.vehicleCategory == category
                         select search).ToList();
            }

            model = (from search in model
                     join vehicleRent in db.VehicleRents on search.ID equals vehicleRent.VehicleID
                     where vehicleRent.IsActive == true && vehicleRent.TermID == 1 && vehicleRent.Amount >= v_minPrice && vehicleRent.Amount <= v_maxprice
                     select search).Distinct().ToList();
            foreach (var item in model)
            {
                if (User != null)
                {
                    var IsFavorite = db.Wishlists.Where(x => x.Vehicleid == item.ID && x.Userid == User.UserId).FirstOrDefault();
                    if (IsFavorite != null)
                    {
                        item.IsWishListed = true;
                    }
                    else
                    {
                        item.IsWishListed = false;
                    }
                }
                else
                {
                    item.IsWishListed = false;
                }
            }
            if (sort == "true")
            {
                model = model.OrderByDescending(o => o.CreatedOn).ToList();
            }
            if (v_lat > 0 || v_lng > 0)
            {
                model = GetAllNearestVehicles(v_lat, v_lng, model);

            }
            ViewBag.RVCategoryList = db.Categories.Where(c => c.IsActive == true).ToList();
            ViewBag.RVBrandList = db.Brands.Where(c => c.IsActive == true).ToList();
            ViewBag.count = model.Count;
            return View("TagWiseFleetListing", model);
        }

        public ActionResult ContactUs()
        {
            return View();
        }

        public bool SendEmail(string to = "info@acervrentals.com", string Subject = "", string Content = "Test Data")
        {
            var myMessage = new SendGrid.SendGridMessage();          
            myMessage.AddTo(to);
            myMessage.From = new MailAddress(WebConfigurationManager.AppSettings["SendGridFromEmail"]);
            myMessage.Subject = Subject;
            myMessage.EnableTemplateEngine("0155a928-47f4-4b2e-9020-26d9ba71c332");         
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential(WebConfigurationManager.AppSettings["SendGridUsername"], WebConfigurationManager.AppSettings["SendGridPassword"]);
            TimeSpan time = TimeSpan.FromMinutes(1);
            myMessage.Html = Content;
            var transportWeb = new SendGrid.Web(WebConfigurationManager.AppSettings["SendGridKey"], credentials, time);
            transportWeb.DeliverAsync(myMessage);
            return true;
        }
    }

}