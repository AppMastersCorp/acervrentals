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
    public class FeaturesMastersController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: FeaturesMasters
        public ActionResult Index()
        {
            var featuresMasters = db.FeaturesMasters.Include(f => f.AmentiesMaster);
            return View(featuresMasters.ToList());
        }

        // GET: FeaturesMasters/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FeaturesMaster featuresMaster = db.FeaturesMasters.Find(id);
            if (featuresMaster == null)
            {
                return HttpNotFound();
            }
            return View(featuresMaster);
        }

        // GET: FeaturesMasters/Create
        public ActionResult Create()
        {
            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name");
            return View();
        }

        // POST: FeaturesMasters/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,AmentiesID,Title,Description,IsActive")] FeaturesMasterVM featuresMastervm)
        {
            if (ModelState.IsValid)
            {
                FeaturesMaster featuresmaster = new FeaturesMaster();
                featuresmaster.ID = featuresMastervm.ID;
                featuresmaster.AmentiesID = featuresMastervm.AmentiesID;
                featuresmaster.Description = featuresMastervm.Description;
                featuresmaster.IsActive = true;
                featuresmaster.Title = featuresMastervm.Title;
                db.FeaturesMasters.Add(featuresmaster);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name", featuresMastervm.AmentiesID);
            return View(featuresMastervm);
        }

        // GET: FeaturesMasters/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FeaturesMaster featuresMaster = db.FeaturesMasters.Find(id);
            FeaturesMasterVM FeaturesMasterVM = new FeaturesMasterVM();


            FeaturesMasterVM.ID = featuresMaster.ID;
            FeaturesMasterVM.Description = featuresMaster.Description;
            FeaturesMasterVM.AmentiesID = featuresMaster.AmentiesID;
            FeaturesMasterVM.IsActive = featuresMaster.IsActive;
            FeaturesMasterVM.Title = featuresMaster.Title;
            if (featuresMaster == null)
            {
                return HttpNotFound();
            }

            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name", featuresMaster.AmentiesID);
            return View(FeaturesMasterVM);
        }

        // POST: FeaturesMasters/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,AmentiesID,Title,Description,IsActive")] FeaturesMasterVM featuresMastervm)
        {
            if (ModelState.IsValid)
            {
                FeaturesMaster featuresmaster = new FeaturesMaster();
                featuresmaster.ID = featuresMastervm.ID;
                featuresmaster.AmentiesID = featuresMastervm.AmentiesID;
                featuresmaster.Description = featuresMastervm.Description;
                featuresmaster.IsActive = true;
                featuresmaster.Title = featuresMastervm.Title;
                db.Entry(featuresmaster).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name", featuresMastervm.AmentiesID);
            return View(featuresMastervm);
        }

        // GET: FeaturesMasters/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FeaturesMaster featuresMaster = db.FeaturesMasters.Find(id);
            if (featuresMaster == null)
            {
                return HttpNotFound();
            }
            return View(featuresMaster);
        }

        // POST: FeaturesMasters/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FeaturesMaster featuresMaster = db.FeaturesMasters.Find(id);
            db.FeaturesMasters.Remove(featuresMaster);
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
