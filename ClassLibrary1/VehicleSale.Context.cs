﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class VehicleSaleEntities : DbContext
    {
        public VehicleSaleEntities()
            : base("name=VehicleSaleEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AmentiesMaster> AmentiesMasters { get; set; }
        public virtual DbSet<Banner> Banners { get; set; }
        public virtual DbSet<Brand> Brands { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<ContactUsRequestDetail> ContactUsRequestDetails { get; set; }
        public virtual DbSet<Faq> Faqs { get; set; }
        public virtual DbSet<FeaturesMaster> FeaturesMasters { get; set; }
        public virtual DbSet<Folder> Folders { get; set; }
        public virtual DbSet<Login_SocailNetwork> Login_SocailNetwork { get; set; }
        public virtual DbSet<Make> Makes { get; set; }
        public virtual DbSet<MessageSender> MessageSenders { get; set; }
        public virtual DbSet<Model> Models { get; set; }
        public virtual DbSet<Newsletter> Newsletters { get; set; }
        public virtual DbSet<OfferMaster> OfferMasters { get; set; }
        public virtual DbSet<Page> Pages { get; set; }
        public virtual DbSet<PageImage> PageImages { get; set; }
        public virtual DbSet<RentTerm> RentTerms { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<TagMaster> TagMasters { get; set; }
        public virtual DbSet<Testimonial> Testimonials { get; set; }
        public virtual DbSet<UploadFile> UploadFiles { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<VehicleAmenty> VehicleAmenties { get; set; }
        public virtual DbSet<VehicleFeature> VehicleFeatures { get; set; }
        public virtual DbSet<VehicleImage> VehicleImages { get; set; }
        public virtual DbSet<VehicleRent> VehicleRents { get; set; }
        public virtual DbSet<VehicleRentleCondition> VehicleRentleConditions { get; set; }
        public virtual DbSet<VehicleTag> VehicleTags { get; set; }
        public virtual DbSet<VehicleType> VehicleTypes { get; set; }
        public virtual DbSet<Widget> Widgets { get; set; }
        public virtual DbSet<Wishlist> Wishlists { get; set; }
        public virtual DbSet<Vehicle> Vehicles { get; set; }
    }
}
