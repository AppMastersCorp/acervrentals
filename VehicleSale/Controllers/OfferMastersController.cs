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

namespace VehicleSale.Controllers
{
    [Authorize(Roles = "Admin")]
    public class OfferMastersController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: OfferMasters
        public ActionResult Index()
        {
            return View(db.OfferMasters.ToList());
        }


        // GET: OfferMasters/Create
        public ActionResult Create()
        {
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title");
            return View();
        }

        // POST: OfferMasters/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,VehicleID,NoOfNights,Location,ValidUntillDate,PickUp,ReturnDate,OfferPrice,DownPaymentPercentage,IsActive")] OffermasterVM offerMastervm)
        {
            if (ModelState.IsValid)
            {
                OfferMaster offerMaster = new OfferMaster();
                offerMaster.ID = offerMastervm.ID;
                offerMaster.NoOfNights = offerMastervm.NoOfNights;
                offerMaster.Location = offerMastervm.Location;
                offerMaster.IsActive = offerMastervm.IsActive;
                offerMaster.ReturnDate = offerMastervm.ReturnDate;
                offerMaster.PickUp = offerMastervm.PickUp;
                offerMaster.OfferPrice = offerMastervm.OfferPrice;
                offerMaster.DownPaymentPercentage = offerMastervm.DownPaymentPercentage;
                offerMaster.ValidUntillDate = offerMastervm.ValidUntillDate;
                offerMaster.VehicleID = offerMastervm.VehicleID;
                db.OfferMasters.Add(offerMaster);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title");
            return View(offerMastervm);
        }

        // GET: OfferMasters/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OfferMaster offerMaster = db.OfferMasters.Find(id);
            OffermasterVM offerMastervm = new OffermasterVM();
            offerMastervm.ID = offerMaster.ID;
            offerMastervm.NoOfNights = offerMaster.NoOfNights;
            offerMastervm.Location = offerMaster.Location;
            offerMastervm.IsActive = offerMaster.IsActive;
            offerMastervm.ReturnDate = offerMaster.ReturnDate;
            offerMastervm.PickUp = offerMaster.PickUp;
            offerMastervm.OfferPrice = offerMaster.OfferPrice;
            offerMastervm.DownPaymentPercentage = offerMaster.DownPaymentPercentage;
            offerMastervm.ValidUntillDate = offerMaster.ValidUntillDate;
            offerMastervm.VehicleID = offerMaster.VehicleID;
            if (offerMaster == null)
            {
                return HttpNotFound();
            }
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", offerMaster.VehicleID);
            return View(offerMastervm);
        }

        // POST: OfferMasters/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,VehicleID,NoOfNights,Location,ValidUntillDate,PickUp,ReturnDate,OfferPrice,DownPaymentPercentage,IsActive")] OffermasterVM offerMastervm)
        {
            if (ModelState.IsValid)
            {
                OfferMaster offerMaster = new OfferMaster();
                offerMaster.ID = offerMastervm.ID;
                offerMaster.NoOfNights = offerMastervm.NoOfNights;
                offerMaster.Location = offerMastervm.Location;
                offerMaster.IsActive = offerMastervm.IsActive;
                offerMaster.ReturnDate = offerMastervm.ReturnDate;
                offerMaster.PickUp = offerMastervm.PickUp;
                offerMaster.OfferPrice = offerMastervm.OfferPrice;
                offerMaster.DownPaymentPercentage = offerMastervm.DownPaymentPercentage;
                offerMaster.ValidUntillDate = offerMastervm.ValidUntillDate;
                offerMaster.VehicleID = offerMastervm.VehicleID;
                db.Entry(offerMaster).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", offerMastervm.VehicleID);
            return View(offerMastervm);
        }

        // GET: OfferMasters/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OfferMaster offerMaster = db.OfferMasters.Find(id);
            if (offerMaster == null)
            {
                return HttpNotFound();
            }
            return View(offerMaster);
        }

        // POST: OfferMasters/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            OfferMaster offerMaster = db.OfferMasters.Find(id);
            db.OfferMasters.Remove(offerMaster);
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
