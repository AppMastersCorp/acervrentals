using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ClassLibrary1;
using VehicleSale.ViewModels;
using Newtonsoft.Json;

namespace VehicleSale.Controllers
{
    [Authorize(Roles = "Admin")]
    public class VehiclesController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: Vehicles
        public ActionResult Index()
        {
            var vehicles = db.Vehicles.Include(v => v.Brand).Include(v => v.Category).Include(v => v.Model).Include(v => v.VehicleType);
            return View(vehicles.ToList());
        }


        // GET: Vehicles/Create
        public ActionResult Create()
        {
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name");
            ViewBag.CategoryID = new SelectList(db.Categories, "ID", "Name");
            ViewBag.ModelID = new SelectList(db.Models, "ID", "Name");
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name");
            ViewBag.Tags = db.TagMasters.Where(x => x.IsActive == true).ToList();
            return View();
        }

        // POST: Vehicles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Title,Description,VehicleCode,VehicleTypeID,CategoryID,BrandID,ModelID,Seats,Sleeps,YearBuilt,Length,Width,Longitude,Latitude,IsFeatured,IsSaleable,SalePrice")] VehicleVM vehicleVM, string Tags)
        {
            ViewBag.Tags = db.TagMasters.Where(x => x.IsActive == true).ToList();
            if (ModelState.IsValid)
            {
                Vehicle vehicle = new Vehicle();
                vehicle.ID = vehicleVM.ID;
                vehicle.Title = vehicleVM.Title;
                vehicle.Description = vehicleVM.Description;
                vehicle.VehicleCode = vehicleVM.VehicleCode;
                vehicle.VehicleTypeID = vehicleVM.VehicleTypeID;
                vehicle.CategoryID = vehicleVM.CategoryID;
                vehicle.BrandID = vehicleVM.BrandID;
                vehicle.ModelID = vehicleVM.ModelID;
                vehicle.Seats = vehicleVM.Seats;
                vehicle.Sleeps = vehicleVM.Sleeps;
                vehicle.YearBuilt = vehicleVM.YearBuilt;
                vehicle.Length = Convert.ToString(vehicleVM.Length);
                vehicle.Width = Convert.ToString(vehicleVM.Width);
                vehicle.Longitude = vehicleVM.Longitude;
                vehicle.Latitude = vehicleVM.Latitude;
                vehicle.IsFeatured = vehicleVM.IsFeatured;
                vehicle.IsSaleable = vehicleVM.IsSaleable;
                vehicle.SalePrice = vehicleVM.SalePrice;
                vehicle.CreatedOn = DateTime.Now;
                vehicle.UpdatedOn = DateTime.Now;
                vehicle.IsActive = true;
                db.Vehicles.Add(vehicle);
                db.SaveChanges();
                List<string> Tagslist = JsonConvert.DeserializeObject<List<string>>(Tags);
                VehicleTag vehicleTag = new VehicleTag();
                if (Tagslist != null)
                {
                    for (int i = 0; i < Tagslist.Count; i++)
                    {
                        vehicleTag.TagID = Convert.ToInt32(Tagslist[i]);
                        vehicleTag.VehicleID = vehicle.ID;
                        vehicleTag.IsActive = true;
                        db.VehicleTags.Add(vehicleTag);
                        db.SaveChanges();
                    }
                }
                return RedirectToAction("Index");
            }

            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", vehicleVM.BrandID);
            ViewBag.CategoryID = new SelectList(db.Categories, "ID", "Name", vehicleVM.CategoryID);
            ViewBag.ModelID = new SelectList(db.Models, "ID", "Name", vehicleVM.ModelID);
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", vehicleVM.VehicleTypeID);
            return View(vehicleVM);
        }

        // GET: Vehicles/Edit/5
        public ActionResult Edit(int? id)
        {
            ViewBag.Tags = db.TagMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.Vehicletags = db.VehicleTags.Where(x => x.VehicleID == id).ToList();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vehicle vehicle = db.Vehicles.Find(id);
            if (vehicle == null)
            {
                return HttpNotFound();
            }
            VehicleVM vehicleVM = new VehicleVM();
            vehicleVM.ID = vehicle.ID;
            vehicleVM.Title = vehicle.Title;
            vehicleVM.Description = vehicle.Description;
            vehicleVM.VehicleCode = vehicle.VehicleCode;
            vehicleVM.VehicleTypeID = vehicle.VehicleTypeID;
            vehicleVM.CategoryID = vehicle.CategoryID;
            vehicleVM.BrandID = vehicle.BrandID;
            vehicleVM.ModelID = vehicle.ModelID;
            vehicleVM.Seats = vehicle.Seats;
            vehicleVM.Sleeps = vehicle.Sleeps;
            vehicleVM.YearBuilt = vehicle.YearBuilt;
            vehicleVM.Length = Convert.ToSingle(vehicle.Length);
            vehicleVM.Width = Convert.ToSingle(vehicle.Width);
            vehicleVM.Longitude = vehicle.Longitude;
            vehicleVM.Latitude = vehicle.Latitude;
            vehicleVM.IsFeatured = vehicle.IsFeatured;
            vehicleVM.IsSaleable = vehicle.IsSaleable;
            vehicleVM.SalePrice = vehicle.SalePrice;
            vehicleVM.CreatedOn = DateTime.Now;
            vehicleVM.UpdatedOn = DateTime.Now;
            vehicleVM.IsActive = true;
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", vehicle.BrandID);
            ViewBag.CategoryID = new SelectList(db.Categories, "ID", "Name", vehicle.CategoryID);
            ViewBag.ModelID = new SelectList(db.Models, "ID", "Name", vehicle.ModelID);
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", vehicle.VehicleTypeID);
            return View(vehicleVM);
        }

        // POST: Vehicles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Title,Description,VehicleCode,VehicleTypeID,CategoryID,BrandID,ModelID,Seats,Sleeps,YearBuilt,Length,Width,Longitude,Latitude,IsFeatured,IsSaleable,SalePrice")] VehicleVM vehicleVM, string Tags)
        {
            ViewBag.Tags = db.TagMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.Vehicletags = db.VehicleTags.Where(x => x.VehicleID == vehicleVM.ID).ToList();
            if (ModelState.IsValid)
            {
                Vehicle vehicle = new Vehicle();
                vehicle.ID = vehicleVM.ID;
                vehicle.Title = vehicleVM.Title;
                vehicle.Description = vehicleVM.Description;
                vehicle.VehicleCode = vehicleVM.VehicleCode;
                vehicle.VehicleTypeID = vehicleVM.VehicleTypeID;
                vehicle.CategoryID = vehicleVM.CategoryID;
                vehicle.BrandID = vehicleVM.BrandID;
                vehicle.ModelID = vehicleVM.ModelID;
                vehicle.Seats = vehicleVM.Seats;
                vehicle.Sleeps = vehicleVM.Sleeps;
                vehicle.YearBuilt = vehicleVM.YearBuilt;
                vehicle.Length = Convert.ToString(vehicleVM.Length);
                vehicle.Width = Convert.ToString(vehicleVM.Width);
                vehicle.Longitude = vehicleVM.Longitude;
                vehicle.Latitude = vehicleVM.Latitude;
                vehicle.IsFeatured = vehicleVM.IsFeatured;
                vehicle.IsSaleable = vehicleVM.IsSaleable;
                vehicle.SalePrice = vehicleVM.SalePrice;
                vehicle.CreatedOn = DateTime.Now;
                vehicle.UpdatedOn = DateTime.Now;
                vehicle.IsActive = true;
                vehicle.UpdatedOn = DateTime.Now;
                vehicle.IsActive = true;
                db.Entry(vehicle).State = EntityState.Modified;
                db.SaveChanges();
                List<string> Tagslist = JsonConvert.DeserializeObject<List<string>>(Tags);
                VehicleTag vehicleTag = new VehicleTag();
                if (Tagslist != null)
                {


                    for (int i = 0; i < Tagslist.Count; i++)
                    {
                        int tagid = Convert.ToInt32(Tagslist[i]);
                        var ExistingTags = db.VehicleTags.Where(x => x.VehicleID == vehicle.ID && x.TagID == tagid).Any();
                        if (!ExistingTags)
                        {
                            vehicleTag.TagID = tagid;
                            vehicleTag.VehicleID = vehicle.ID;
                            vehicleTag.IsActive = true;
                            db.VehicleTags.Add(vehicleTag);
                            db.SaveChanges();
                        }

                    }
                }
                return RedirectToAction("Index");
            }
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", vehicleVM.BrandID);
            ViewBag.CategoryID = new SelectList(db.Categories, "ID", "Name", vehicleVM.CategoryID);
            ViewBag.ModelID = new SelectList(db.Models, "ID", "Name", vehicleVM.ModelID);
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", vehicleVM.VehicleTypeID);
            return View(vehicleVM);
        }

        // GET: Vehicles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vehicle vehicle = db.Vehicles.Find(id);
            if (vehicle == null)
            {
                return HttpNotFound();
            }
            return View(vehicle);
        }

        // POST: Vehicles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Vehicle vehicle = db.Vehicles.Find(id);
            List<VehicleImage> vehicleImages = db.VehicleImages.Where(vi => vi.VehicleID == id).ToList();
            if (vehicleImages != null && vehicleImages.Count > 0)
            {
                db.VehicleImages.RemoveRange(vehicleImages);
                db.SaveChanges();
            }
            List<VehicleFeature> vehicleFeatures = db.VehicleFeatures.Where(vi => vi.VehicleID == id).ToList();
            if (vehicleFeatures != null && vehicleFeatures.Count > 0)
            {
                db.VehicleFeatures.RemoveRange(vehicleFeatures);
                db.SaveChanges();
            }
            db.Vehicles.Remove(vehicle);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
