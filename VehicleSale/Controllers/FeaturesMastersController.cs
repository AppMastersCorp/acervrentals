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
using System.IO;

namespace VehicleSale.Controllers
{
    [CustomAuthorize(Roles = "Admin")]
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
        public ActionResult Create([Bind(Include = "ID,AmentiesID,Title,Description,IsActive")] FeaturesMasterVM featuresMastervm, HttpPostedFileBase ImageUrl)
        {
            if (ImageUrl == null)
            {
                ModelState.AddModelError("ImageUrl", "Please select image");
            }
            if (ModelState.IsValid)
            {
                FeaturesMaster featuresmaster = new FeaturesMaster();
                if (ImageUrl != null && ImageUrl.ContentLength > 0)
                {
                    HttpFileCollectionBase file = Request.Files;
                    DataTable dt = new DataTable { Columns = { new DataColumn("Path") } };
                    for (int i = 0; i < file.Count; i++)
                    {
                        HttpPostedFileBase files = file[i];
                        if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                        {
                            var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                            string path = Server.MapPath("~/ProductImage/") + fileName;
                            dt.Rows.Add(files.FileName);
                            featuresmaster.ImageUrl = "/ProductImage/" + fileName;
                            files.SaveAs(path);

                        }
                    }
                }
                
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
            FeaturesMasterVM featuresMasterVM = new FeaturesMasterVM();            
            featuresMasterVM.ID = featuresMaster.ID;
            featuresMasterVM.Description = featuresMaster.Description;
            featuresMasterVM.ImageUrl = featuresMaster.ImageUrl;
            featuresMasterVM.AmentiesID = featuresMaster.AmentiesID;
            featuresMasterVM.IsActive = featuresMaster.IsActive;
            featuresMasterVM.Title = featuresMaster.Title;
            if (featuresMaster == null)
            {
                return HttpNotFound();
            }

            ViewBag.AmentiesID = new SelectList(db.AmentiesMasters, "ID", "Name", featuresMaster.AmentiesID);
            return View(featuresMasterVM);
        }

        // POST: FeaturesMasters/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,AmentiesID,Title,Description,IsActive")] FeaturesMasterVM featuresMastervm, HttpPostedFileBase ImageUrl)
        {
            //if (ImageUrl == null)
            //{
            //    ModelState.AddModelError("ImageUrl", "Please select image");
            //}
            if (ModelState.IsValid)
            {
                FeaturesMaster featuresmaster = db.FeaturesMasters.Where(am => am.ID == featuresMastervm.ID).FirstOrDefault();
                if (ImageUrl != null && ImageUrl.ContentLength > 0)
                {

                    HttpFileCollectionBase file = Request.Files;
                    DataTable dt = new DataTable { Columns = { new DataColumn("Path") } };
                    for (int i = 0; i < file.Count; i++)
                    {
                        HttpPostedFileBase files = file[i];
                        if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                        {
                            var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                            string path = Server.MapPath("~/ProductImage/") + fileName;
                            dt.Rows.Add(files.FileName);
                            files.SaveAs(path);
                            featuresmaster.ImageUrl = "/ProductImage/" + fileName;
                        }
                    }
                }
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

        [HttpPost]
        public ActionResult ImageDelete(int? id)
        {
            FeaturesMaster FeaturesMaster = db.FeaturesMasters.Find(id);

            if (FeaturesMaster == null)
            {
                return HttpNotFound();
            }

            FeaturesMaster.ImageUrl = null;
            db.Entry(FeaturesMaster).State = EntityState.Modified;
            db.SaveChanges();
            return Content("true");
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
