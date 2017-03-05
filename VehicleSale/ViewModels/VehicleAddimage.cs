using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class VehicleAddimage
    {
        public string ImageUrl { get; set; }
        public string Vehicletitle { get; set; }
        public string VehicleDescription { get; set; }
        public string PublicKey { get; set; }
        public DateTime? CreatedOn { get; set; }
        public int VehicleID { get; set; }
    }
}