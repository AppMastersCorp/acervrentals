﻿using System;
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
    public class VehicleRentsController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: VehicleRents
        public ActionResult Index()
        {
            var vehicleRents = db.VehicleRents.Include(v => v.RentTerm).Include(v => v.Vehicle);
            return View(vehicleRents.ToList());
        }

        

        // GET: VehicleRents/Create
        public ActionResult Create()
        {
            ViewBag.TermID = new SelectList(db.RentTerms, "ID", "Term");
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title");
            return View();
        }

        // POST: VehicleRents/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,TermID,VehicleID,Amount")] VehicleRentVM vehicleRentVM)
        {
            if (ModelState.IsValid)
            {
                VehicleRent vehicleRent = new VehicleRent();
                vehicleRent.ID = vehicleRentVM.ID;
                vehicleRent.TermID = vehicleRentVM.TermID;
                vehicleRent.VehicleID = vehicleRentVM.VehicleID;
                vehicleRent.Amount = vehicleRentVM.Amount; 
                vehicleRent.IsActive = true;
                db.VehicleRents.Add(vehicleRent);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.TermID = new SelectList(db.RentTerms, "ID", "Term", vehicleRentVM.TermID);
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleRentVM.VehicleID);
            return View(vehicleRentVM);
        }

        // GET: VehicleRents/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleRent vehicleRent = db.VehicleRents.Find(id);
            VehicleRentVM vehicleRentVM = new VehicleRentVM();
            vehicleRentVM.ID = vehicleRent.ID;
            vehicleRentVM.TermID = vehicleRent.TermID;
            vehicleRentVM.VehicleID = vehicleRent.VehicleID;
            vehicleRentVM.Amount = vehicleRent.Amount;
            vehicleRentVM.IsActive = true;
            if (vehicleRent == null)
            {
                return HttpNotFound();
            }
            ViewBag.TermID = new SelectList(db.RentTerms, "ID", "Term", vehicleRent.TermID);
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleRent.VehicleID);
            return View(vehicleRentVM);
        }

        // POST: VehicleRents/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,TermID,VehicleID,Amount")] VehicleRentVM vehicleRentVM)
        {
            if (ModelState.IsValid)
            {
                VehicleRent vehicleRent = new VehicleRent();
                vehicleRent.ID = vehicleRentVM.ID;
                vehicleRent.TermID = vehicleRentVM.TermID;
                vehicleRent.VehicleID = vehicleRentVM.VehicleID;
                vehicleRent.Amount = vehicleRentVM.Amount;
                vehicleRent.IsActive = true;
                db.Entry(vehicleRent).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.TermID = new SelectList(db.RentTerms, "ID", "Term", vehicleRentVM.TermID);
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleRentVM.VehicleID);
            return View(vehicleRentVM);
        }

        // GET: VehicleRents/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleRent vehicleRent = db.VehicleRents.Find(id);
            if (vehicleRent == null)
            {
                return HttpNotFound();
            }
            return View(vehicleRent);
        }

        // POST: VehicleRents/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            VehicleRent vehicleRent = db.VehicleRents.Find(id);
            db.VehicleRents.Remove(vehicleRent);
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
