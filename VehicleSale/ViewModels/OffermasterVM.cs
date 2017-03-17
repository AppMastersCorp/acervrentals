using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace VehicleSale.ViewModels
{
    public class OffermasterVM
    {       
        public int ID { get; set; }
        public Nullable<int> VehicleID { get; set; }
        [Required(ErrorMessage = "Please Enter Night.")]
        [Range(1, 1000)]
        [Display(Name = "No of Nights")]
        public Nullable<int> NoOfNights { get; set; }
        [Required(ErrorMessage = "Please Enter Location.")]
        public string Location { get; set; }
        [Required(ErrorMessage = "Please Enter ValidUntillDate.")]
        [Display(Name = "Valid Untill Date")]
        public Nullable<System.DateTime> ValidUntillDate { get; set; }
        [Display(Name = "PickUp Date")]
        [Required(ErrorMessage = "Please Enter PickUp Date.")]
        public Nullable<System.DateTime> PickUp { get; set; }
        [Display(Name = "Return Date")]
        [Required(ErrorMessage = "Please Enter Return Date.")]
        public Nullable<System.DateTime> ReturnDate { get; set; }
        [Required(ErrorMessage = "Please Enter Offer Price.")]
        [Range(0, int.MaxValue, ErrorMessage = "Offer Price must be a positive number")]
        [Display(Name = "Offer Price")]
        public Nullable<double> OfferPrice { get; set; }
        [Range(1, 100)]
        [Display(Name = "Down Payment Percentage")]
        public Nullable<double> DownPaymentPercentage { get; set; }
        [Display(Name = "Is Active")]
        public Nullable<bool> IsActive { get; set; }

    }
}