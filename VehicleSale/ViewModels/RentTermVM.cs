using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class RentTermVM
    {
        public int ID { get; set; }
        [Required(ErrorMessage ="Please Enter Term.")]
        public string Term { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }
}