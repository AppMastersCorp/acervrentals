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
        [Display(Name = "Other Category")]
        public string OtherCategory { get; set; }
        public Nullable<int> BrandID { get; set; }
        [Display(Name = "Other Brand")]
        public string OtherBrand { get; set; }
        public Nullable<int> ModelID { get; set; }
        [Display(Name = "Other Model")]
        public string OtherModel { get; set; }
        public Nullable<int> MakeID { get; set; }
        [Display(Name = "Other Make")]
        public string OtherMake { get; set; }
        [Required(ErrorMessage = "Please enter Seats")]
        public Nullable<int> Seats { get; set; }
        [Required(ErrorMessage = "Please enter Sleeps")]
        [Display(Name = "Adult Sleeps")]
        public Nullable<int> AdultSleeps { get; set; }
        [Display(Name = "Kid Sleeps")]
        public Nullable<int> KidSleeps { get; set; }
        [Required(ErrorMessage = "Please enter Year Built")]
        public Nullable<int> YearBuilt { get; set; }
        [Range(0, float.MaxValue, ErrorMessage = "Please enter valid Length")]
        public float Length { get; set; }
        [Range(0, float.MaxValue, ErrorMessage = "Please enter valid Width")]
        public float Width { get; set; }
        public bool IsFeatured { get; set; }
        public Nullable<bool> IsActive { get; set; }
        // [Required(ErrorMessage = "Please enter Description")]
        public string Description { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
        public bool IsSaleable { get; set; }
        [Display(Name = "Sale Price")]
        public Nullable<double> SalePrice { get; set; }
        [Display(Name = "Daily Rate")]
        public Nullable<double> DailyRate { get; set; }
        [Display(Name = "Security Deposit")]
        public Nullable<double> SecurityDeposit { get; set; }
        [Display(Name = "Cleaning Fee")]
        public Nullable<double> CleaningFee { get; set; }
        [Display(Name = "Winter Discount")]
        public Nullable<double> WinterDiscount { get; set; }
        //[Required(ErrorMessage = "Please enter Longitude")]
        public string Longitude { get; set; }
        //[Required(ErrorMessage = "Please enter Latitude")]
        public string Latitude { get; set; }
        public string VideoUrl1 { get; set; }
        public string VideoUrl2 { get; set; }
        public string Transmission { get; set; }
        [Display(Name = "Drive Mode")]
        public string DriveMode { get; set; }
        [Display(Name = "Fuel Type")]
        public string FuelType { get; set; }
        public Nullable<int> Amps { get; set; }
        [Range(0, int.MaxValue, ErrorMessage = "Wheelbase must be a positive number")]
        public Nullable<int> Wheelbase { get; set; }
        [Range(0, int.MaxValue, ErrorMessage = "GCWR must be a positive number")]
        public int GCWR { get; set; }
        [Display(Name = "Fuel Capacity")]
        public Nullable<double> FuelCapacity { get; set; }
        [Display(Name = "Hitch Weight")]
        public Nullable<double> HitchWeight { get; set; }
        [Display(Name = "Base Weight")]
        public Nullable<double> BaseWeight { get; set; }
        public Nullable<bool> GVWR { get; set; }
        [Display(Name = "Exterior Length")]
        [RegularExpression("^[0-9]{1,12}$", ErrorMessage = "Exterior length must be numeric")]
        public Nullable<int> ExteriorlengthFt { get; set; }
        [Display(Name = "Exterior Length")]

        [RegularExpression("^[0-9]{1,12}$", ErrorMessage = "Exterior length must be numeric")]
        public Nullable<int> ExteriorlengthInch { get; set; }
        [Display(Name = "Exterior Height")]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Exterior Height must be numeric")]
        public Nullable<int> ExteriorHeightFt { get; set; }
        [Display(Name = "Exterior Height")]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Exterior Height must be numeric")]
        public Nullable<int> ExteriorHeightInch { get; set; }

        [Display(Name = "Fresh Water")]
        public Nullable<double> FreshWater { get; set; }
        [Display(Name = "Grey Water")]
        public Nullable<double> GreyWater { get; set; }
        [Display(Name = "Black Water")]
        public Nullable<double> BlackWater { get; set; }

        [Display(Name = "Awing Size")]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Awing Size must be numeric")]
        public Nullable<int> AwingSizeFt { get; set; }
        [Display(Name = "Awing Size")]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Awing Size must be numeric")]
        public Nullable<int> AwingSizeInch { get; set; }


        [RegularExpression("^[0-9]{1,12}$", ErrorMessage = "Bed must be numeric")]
        public Nullable<int> Bed { get; set; }


        [RegularExpression("^[0-9]{1,12}$", ErrorMessage = "Queen must be numeric")]
        public Nullable<int> Queen { get; set; }


        [RegularExpression("^[0-9]{1,12}$", ErrorMessage = "Full must be numeric")]
        public Nullable<int> Full { get; set; }


        [RegularExpression("^[0-9]{1,12}$", ErrorMessage = "Twin must be numeric")]
        public Nullable<int> Twin { get; set; }

    }
}