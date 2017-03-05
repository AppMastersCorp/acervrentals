using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class TagMasterVM
    {
        public int ID { get; set; }
        [Required(ErrorMessage = "Please Enter Name")]
        public string TagName { get; set; }
        public string TagIconUrl { get; set; }
        public string BackgroundUrl { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }
}