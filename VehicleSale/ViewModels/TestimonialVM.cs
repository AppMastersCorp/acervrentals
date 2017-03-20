using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class TestimonialVM
    {
        public int ID { get; set; }
        [Required(ErrorMessage = "Please Enter Description.")]
        public string Description { get; set; }
        [Required(ErrorMessage = "Please Enter Title.")]
        public string Title { get; set; }
        [Required(ErrorMessage = "Please Enter Summary.")]
        public string Summary { get; set; }
     
        public string ImageURl { get; set; }
        public string LogoUrl { get; set; }
        public bool isactive { get; set; }
        public Nullable<System.DateTime> createdon { get; set; }
        public Nullable<System.DateTime> updatedon { get; set; }
        [Range(1, 5)]
        public Nullable<int> Rating { get; set; }

    }
}