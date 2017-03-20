using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class VehicleRentVM
    {
        public int ID { get; set; }
        public Nullable<int> TermID { get; set; }
        public Nullable<int> VehicleID { get; set; }
        [Required(ErrorMessage = "Please enter Amount")]
        public Nullable<double> Amount { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }
}