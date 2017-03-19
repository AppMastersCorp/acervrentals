using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class MakeVM
    {
        public int ID { get; set; }
        [Required(ErrorMessage = "Please enter Name.")]
        public string Name { get; set; }
        public Nullable<bool> IsActive { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Vehicle> Vehicles { get; set; }
    }
}