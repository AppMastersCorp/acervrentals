//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    
    public partial class VehicleFeature
    {
        public int ID { get; set; }
        public Nullable<int> VehicleID { get; set; }
        public Nullable<int> FeatureID { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public string Description { get; set; }
    
        public virtual FeaturesMaster FeaturesMaster { get; set; }
        public virtual Vehicle Vehicle { get; set; }
    }
}