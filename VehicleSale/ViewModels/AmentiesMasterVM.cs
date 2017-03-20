using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class AmentiesMasterVM
    {
        public int ID { get; set; }
        [Required(ErrorMessage ="Please Enter Name")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Please Enter Description.")]
        public string Description { get; set; }
        public Nullable<bool> IsActive { get; set; }
       
        public string ImageUrl { get; set; }
    }
   
}