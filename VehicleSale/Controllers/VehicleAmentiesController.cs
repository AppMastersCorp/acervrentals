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
    [CustomAuthorize(Roles = "Admin")]
    public class VehicleAmentiesController : Controller
    {

        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: VehicleAmenties
        public ActionResult Index()
        {
            var vehicleAmenties = db.VehicleAmenties.Include(v => v.AmentiesMaster).Include(v => v.Vehicle);
            return View(vehicleAmenties.ToList());
        }


        // GET: VehicleAmenties/Create
        public ActionResult Create()
        {
            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name");
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title");
            return View();
        }

        // POST: VehicleAmenties/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,VehicleID,AmentiesID")] VehicleAmenty vehicleAmenty)
        {
            if (ModelState.IsValid)
            {
                vehicleAmenty.IsActive = true;
                db.VehicleAmenties.Add(vehicleAmenty);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name", vehicleAmenty.AmentiesID);
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleAmenty.VehicleID);
            return View(vehicleAmenty);
        }

        // GET: VehicleAmenties/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleAmenty vehicleAmenty = db.VehicleAmenties.Find(id);
            if (vehicleAmenty == null)
            {
                return HttpNotFound();
            }
            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name", vehicleAmenty.AmentiesID);
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleAmenty.VehicleID);
            return View(vehicleAmenty);
        }

        // POST: VehicleAmenties/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,VehicleID,AmentiesID")] VehicleAmenty vehicleAmenty)
        {
            if (ModelState.IsValid)
            {
                vehicleAmenty.IsActive = true;
                db.Entry(vehicleAmenty).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name", vehicleAmenty.AmentiesID);
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleAmenty.VehicleID);
            return View(vehicleAmenty);
        }

        // GET: VehicleAmenties/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleAmenty vehicleAmenty = db.VehicleAmenties.Find(id);
            if (vehicleAmenty == null)
            {
                return HttpNotFound();
            }
            return View(vehicleAmenty);
        }

        // POST: VehicleAmenties/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            VehicleAmenty vehicleAmenty = db.VehicleAmenties.Find(id);
            db.VehicleAmenties.Remove(vehicleAmenty);
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
