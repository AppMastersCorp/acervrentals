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
    
    public partial class OfferMaster
    {
        public int ID { get; set; }
        public Nullable<int> VehicleID { get; set; }
        public Nullable<int> NoOfNights { get; set; }
        public string Location { get; set; }
        public Nullable<System.DateTime> ValidUntillDate { get; set; }
        public Nullable<System.DateTime> PickUp { get; set; }
        public Nullable<System.DateTime> ReturnDate { get; set; }
        public Nullable<double> OfferPrice { get; set; }
        public Nullable<double> DownPaymentPercentage { get; set; }
        public Nullable<bool> IsActive { get; set; }
    
        public virtual Vehicle Vehicle { get; set; }
    }
}
