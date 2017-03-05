using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class FeaturesMasterVM
    {

        public int ID { get; set; }
        public Nullable<int> AmentiesID { get; set; }
        [Required(ErrorMessage = "Please Enter Title.")]
        public string Title { get; set; }
        [Required(ErrorMessage = "Please Enter Description.")]
        public string Description { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }
}