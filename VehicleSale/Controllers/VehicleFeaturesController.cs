using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ClassLibrary1;

namespace VehicleSale.Controllers
{
    [Authorize(Roles = "Admin")]
    public class VehicleFeaturesController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: VehicleFeatures
        public ActionResult Index(int? Id)
        {
            var vehicleFeatures = db.VehicleFeatures.Where(v => v.VehicleID == Id).Include(v => v.FeaturesMaster).Include(v => v.Vehicle);
            ViewBag.ID = Id;
            return View(vehicleFeatures.ToList());
        }



        // GET: VehicleFeatures/Create
        public ActionResult Create(int? Id)
        {
            ViewBag.ID = Id;
            ViewBag.FeatureID = new SelectList(db.FeaturesMasters, "ID", "Title");
            ViewBag.VehicleID = new SelectList(db.Vehicles.Where(v => v.ID == Id), "ID", "Title");
            return View();
        }

        // POST: VehicleFeatures/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,VehicleID,FeatureID")] VehicleFeature vehicleFeature,int? Id)
        {
            if (ModelState.IsValid)
            {
                vehicleFeature.IsActive = true;
                vehicleFeature.VehicleID = Id;
                ViewBag.ID = vehicleFeature.VehicleID;
                db.VehicleFeatures.Add(vehicleFeature);
                db.SaveChanges();               
                return RedirectToAction("Index", new { id = Id });
            }

            ViewBag.FeatureID = new SelectList(db.FeaturesMasters, "ID", "Title", vehicleFeature.FeatureID);
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleFeature.VehicleID);
            return View(vehicleFeature);
        }

        // GET: VehicleFeatures/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleFeature vehicleFeature = db.VehicleFeatures.Find(id);
            if (vehicleFeature == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID = vehicleFeature.VehicleID;
            ViewBag.FeatureID = new SelectList(db.FeaturesMasters, "ID", "Title", vehicleFeature.FeatureID);
            ViewBag.VehicleID = new SelectList(db.Vehicles.Where(v => v.ID == vehicleFeature.VehicleID), "ID", "Title", vehicleFeature.VehicleID);
            return View(vehicleFeature);
        }

        // POST: VehicleFeatures/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,VehicleID,FeatureID")] VehicleFeature vehicleFeature)
        {
            if (ModelState.IsValid)
            {
                vehicleFeature.IsActive = true;
                vehicleFeature.VehicleID = Convert.ToInt32(Request.Form["hdnVehicleID"]);
                ViewBag.ID = vehicleFeature.VehicleID;
                db.Entry(vehicleFeature).State = EntityState.Modified;
                db.SaveChanges();
               
                return RedirectToAction("Index",new {id = vehicleFeature.VehicleID });
            }
            ViewBag.FeatureID = new SelectList(db.FeaturesMasters, "ID", "Title", vehicleFeature.FeatureID);
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleFeature.VehicleID);
            return View(vehicleFeature);
        }

        // GET: VehicleFeatures/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleFeature vehicleFeature = db.VehicleFeatures.Find(id);
            ViewBag.ID = vehicleFeature.VehicleID;
            if (vehicleFeature == null)
            {
                return HttpNotFound();
            }
            return View(vehicleFeature);
        }

        // POST: VehicleFeatures/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            VehicleFeature vehicleFeature = db.VehicleFeatures.Find(id);
            ViewBag.ID = vehicleFeature.VehicleID;
            db.VehicleFeatures.Remove(vehicleFeature);
            db.SaveChanges();
         
            return RedirectToAction("Index", new { id = ViewBag.ID });
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
