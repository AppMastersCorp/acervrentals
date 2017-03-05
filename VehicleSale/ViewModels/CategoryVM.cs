using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class CategoryVM
    {
        public int ID { get; set; }
        [Required(ErrorMessage = "Please Enter Name.")]
        public string Name { get; set; }
        public Nullable<int> VehicleTypeID { get; set; }
        //[Required(ErrorMessage = "Please Select Image.")]
        public string ImageUrl { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public virtual VehicleType VehicleType { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Vehicle> Vehicles { get; set; }
    }
}