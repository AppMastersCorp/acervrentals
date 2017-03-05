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
    public class VehicleTypesController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: VehicleTypes
        public ActionResult Index()
        {
            return View(db.VehicleTypes.ToList());
        }

        // GET: VehicleTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleType vehicleType = db.VehicleTypes.Find(id);
            if (vehicleType == null)
            {
                return HttpNotFound();
            }
            return View(vehicleType);
        }

        // GET: VehicleTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: VehicleTypes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,IsActive")] VehicleTypeVM vehicleTypevm)
        {
            if (ModelState.IsValid)
            {
                VehicleType vehicleType = new VehicleType();
                vehicleType.ID = vehicleTypevm.ID;
                vehicleType.Name = vehicleTypevm.Name;
                vehicleType.IsActive = true;
                db.VehicleTypes.Add(vehicleType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(vehicleTypevm);
        }

        // GET: VehicleTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleType vehicleType = db.VehicleTypes.Find(id);
            VehicleTypeVM vehicleTypevm = new VehicleTypeVM();
            vehicleTypevm.ID = vehicleType.ID;
            vehicleTypevm.Name = vehicleType.Name;
            vehicleTypevm.IsActive = vehicleType.IsActive;
            if (vehicleType == null)
            {
                return HttpNotFound();
            }
            return View(vehicleTypevm);
        }

        // POST: VehicleTypes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,IsActive")] VehicleTypeVM vehicleTypevm)
        {
            if (ModelState.IsValid)
            {
                VehicleType vehicleType = new VehicleType();
                vehicleType.ID = vehicleTypevm.ID;
                vehicleType.Name = vehicleTypevm.Name;
                vehicleType.IsActive = true;
                db.Entry(vehicleType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(vehicleTypevm);
        }

        // GET: VehicleTypes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleType vehicleType = db.VehicleTypes.Find(id);
            if (vehicleType == null)
            {
                return HttpNotFound();
            }
            return View(vehicleType);
        }

        // POST: VehicleTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            VehicleType vehicleType = db.VehicleTypes.Find(id);
            db.VehicleTypes.Remove(vehicleType);
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
