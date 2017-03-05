using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class VehicleDetailsVM
    {
        public int ID { get; set; }
        public string vehicleTitle { get; set; }
        public string vehicleDescription { get; set; }
        public string vehicleCode { get; set; }
        public string vehicleType { get; set; }
        public string vehicleCategory { get; set; }
        public string vehicleBrand { get; set; }
        public string vehicleModel { get; set; }
        public string ImageUrl { get; set; }
        public string PublicKey { get; set; }
        public string Features { get; set; }
        public int? seats { get; set; }
        public int? sleeps { get; set; }
        public int? yearBuilt { get; set; }
        public string length { get; set; }
        public double? Rent { get; set; }
        public string width { get; set; }
        public bool IsFeatured { get; set; }
        public bool IsWishListed { get; set; }
        public bool? IsActive { get; set; }
        public string latitude { get; set; }
        public string longitude { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
        public System.Data.Entity.Spatial.DbGeography Location { get; set; }
        public Nullable<bool> IsSaleable { get; set; }
        public Nullable<double> SalePrice { get; set; }
        public OfferMaster offer { get; set; }
        public List<VehicleFeature> vehicleFeatures { get; set; }
        public List<VehicleRentleCondition> vehicleRentleConditions { get; set; }
    }
}