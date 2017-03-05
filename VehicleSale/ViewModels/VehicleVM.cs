using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class VehicleVM
    {
        public int ID { get; set; }
        [Required(ErrorMessage = "Please enter Title")]
        public string Title { get; set; }
        [Required(ErrorMessage = "Please enter Vehicle Code")]
        public string VehicleCode { get; set; }
        public Nullable<int> VehicleTypeID { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public Nullable<int> BrandID { get; set; }
        public Nullable<int> ModelID { get; set; }
        [Required(ErrorMessage = "Please enter Seats")]
        public Nullable<int> Seats { get; set; }
        [Required(ErrorMessage = "Please enter Sleeps")]
        public Nullable<int> Sleeps { get; set; }
        [Required(ErrorMessage = "Please enter YearBuilt")]
        public Nullable<int> YearBuilt { get; set; }
        [Required(ErrorMessage = "Please enter Length")]
        [Range(0, float.MaxValue, ErrorMessage = "Please enter valid Length")]
        public float Length { get; set; }
        [Required(ErrorMessage = "Please enter Width")]
        [Range(0, float.MaxValue, ErrorMessage = "Please enter valid Width")]
        public float Width { get; set; }
        public bool IsFeatured { get; set; }
        public Nullable<bool> IsActive { get; set; }
        [Required(ErrorMessage = "Please enter Description")]
        public string Description { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
        public bool IsSaleable { get; set; }
        public Nullable<double> SalePrice { get; set; }
        [Required(ErrorMessage = "Please enter Longitude")]
        public string Longitude { get; set; }
        [Required(ErrorMessage = "Please enter Latitude")]
        public string Latitude { get; set; }
    }
}