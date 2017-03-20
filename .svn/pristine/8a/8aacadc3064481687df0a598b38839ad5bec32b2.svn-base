using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VehicleSale.ViewModels;

namespace VehicleSale.Controllers
{
    public class VehicleDetailController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();
        // GET: VehicleDetail
        public ActionResult Index(int? Id)
        {
            VehicleDetailsVM vehicleDetailsVM = new VehicleDetailsVM();
            var vehicles = db.Vehicles.Where(v => v.ID == Id && v.IsActive == true).FirstOrDefault();
            var vehicleFeatures = db.VehicleFeatures.Where(v => v.VehicleID == Id).ToList();
            var vehicleDetails = (from vehicle in db.Vehicles
                                  join vehicleType in db.VehicleTypes on vehicle.VehicleTypeID equals vehicleType.ID
                                  join models in db.Models on vehicle.ModelID equals models.ID
                                  join category in db.Categories on vehicle.CategoryID equals category.ID
                                  join brand in db.Brands on vehicle.BrandID equals brand.ID
                                  where vehicle.ID == Id && vehicle.IsActive == true
                                  select new VehicleDetailsVM
                                  {
                                      ID = vehicle.ID,
                                      vehicleCode = vehicle.VehicleCode,
                                      vehicleTitle = vehicle.Title,
                                      vehicleBrand = brand.Name,
                                      vehicleDescription = vehicle.Description,
                                      vehicleCategory = category.Name,
                                      vehicleModel = models.Name,
                                      length = vehicle.Length,
                                      width = vehicle.Width,
                                      yearBuilt = vehicle.YearBuilt,
                                      seats = vehicle.Seats,
                                      Adultsleeps = vehicle.AdultSleeps,
                                      KidSleeps = vehicle.KidSleeps,
                                      Rent = vehicle.DailyRate,
                                      IsSaleable = vehicle.IsSaleable,
                                      IsActive = vehicle.IsActive,
                                      IsFeatured = vehicle.IsFeatured,
                                      vehicleType = vehicleType.Name,
                                      SalePrice = vehicle.SalePrice

                                  }).FirstOrDefault();
            vehicleDetailsVM = vehicleDetails;
            if (vehicleFeatures.Count > 0)
                vehicleDetailsVM.vehicleFeatures = vehicleFeatures;
            var vehiclefeatures = (from VehicleFeatures in db.VehicleFeatures
                                   join featuresMaster in db.FeaturesMasters on VehicleFeatures.FeatureID equals featuresMaster.ID
                                   join AmentiesMaster in db.AmentiesMasters on featuresMaster.AmentiesID equals AmentiesMaster.ID
                                   where VehicleFeatures.VehicleID == Id
                                   select new VehicleFeaturesVM
                                   {
                                       Amenty = AmentiesMaster.Name
                                   }).Distinct().ToList();
            ViewBag.VehicleImages = db.VehicleImages.Where(v => v.VehicleID == Id).ToList();
            ViewBag.VehicleOffer = db.OfferMasters.Where(o => o.VehicleID == Id).FirstOrDefault();
            ViewBag.VehicleFeatures = vehiclefeatures;
            ViewBag.GetAmmentiesFeature = (from VehicleFeatures in db.VehicleFeatures
                                           join featuresMaster in db.FeaturesMasters on VehicleFeatures.FeatureID equals featuresMaster.ID
                                           join AmentiesMaster in db.AmentiesMasters on featuresMaster.AmentiesID equals AmentiesMaster.ID
                                           where VehicleFeatures.VehicleID == Id
                                           select new VehicleFeaturesVM
                                           {
                                               ID = VehicleFeatures.ID,
                                               Feature = featuresMaster.Title,
                                               Amenty = AmentiesMaster.Name
                                           }).ToList();
            return View(vehicleDetailsVM);
        }
        public ActionResult VehicleListing()
        {
            return View();
        }
    }
}