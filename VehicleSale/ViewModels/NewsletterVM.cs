using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class NewsletterVM
    {
        public int Id { get; set; }
        [Display(Name = "Email address")]
        [Required(ErrorMessage = "The email address is required")]
        [EmailAddress(ErrorMessage = "Invalid Email Address")]
        public string Email { get; set; }
        public Nullable<bool> isactive { get; set; }
        public Nullable<System.DateTime> createdon { get; set; }
        public Nullable<System.DateTime> updatedon { get; set; }
    }
}