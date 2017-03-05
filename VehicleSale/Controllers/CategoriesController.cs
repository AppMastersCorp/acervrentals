using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ClassLibrary1;
using System.IO;
using VehicleSale.ViewModels;

namespace VehicleSale.Controllers
{
    [Authorize(Roles = "Admin")]
    public class CategoriesController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: Categories
        public ActionResult Index()
        {
            var categories = db.Categories.Include(c => c.VehicleType);
            return View(categories.ToList());
        }


        // GET: Categories/Create
        public ActionResult Create()
        {
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name");
            return View();
        }

        // POST: Categories/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,VehicleTypeID")] CategoryVM categoryvm, HttpPostedFileBase ImageUrl)
        {
            if (ImageUrl == null)
            {
                ModelState.AddModelError("ImageUrl", "Please select image");
            }
            if (ModelState.IsValid)
            {
                Category category = new Category();
                category.ID = categoryvm.ID;
                category.Name = categoryvm.Name;
                category.ImageUrl = categoryvm.ImageUrl;
                category.IsActive = true;
                category.VehicleTypeID = categoryvm.VehicleTypeID;

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
                            categoryvm.ImageUrl = "/ProductImage/" + fileName;
                            files.SaveAs(path);

                        }
                    }

                    category.ImageUrl = categoryvm.ImageUrl;
                }


                db.Categories.Add(category);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", categoryvm.VehicleTypeID);
            return View(categoryvm);
        }

        // GET: Categories/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Category category = db.Categories.Find(id);
            CategoryVM categoryVM = new CategoryVM();
            categoryVM.ID = category.ID;
            categoryVM.ImageUrl = category.ImageUrl;
            categoryVM.IsActive = category.IsActive;
            categoryVM.Name = category.Name;
            categoryVM.VehicleTypeID = category.VehicleTypeID;
            if (category == null)
            {
                return HttpNotFound();
            }
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", category.VehicleTypeID);
            return View(categoryVM);
        }

        [HttpPost]
        public ActionResult ImageDelete(int? id)
        {
            Category category = db.Categories.Find(id);

            if (category == null)
            {
                return HttpNotFound();
            }

            category.ImageUrl = null;
            db.Entry(category).State = EntityState.Modified;
            db.SaveChanges();
            return Content("true");
        }

        // POST: Categories/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,VehicleTypeID")] CategoryVM categoryVM, HttpPostedFileBase ImageUrl)
        {
          
            if (ModelState.IsValid)
            {
                Category category = db.Categories.Where(c => c.ID == categoryVM.ID).FirstOrDefault();
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
                            category.ImageUrl = "/ProductImage/" + fileName;
                        }
                    }
                }
                category.Name = categoryVM.Name;
                category.VehicleTypeID = categoryVM.VehicleTypeID;
                category.IsActive = true;
                db.Entry(category).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", categoryVM.VehicleTypeID);
            return View(categoryVM);
        }

        // GET: Categories/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Category category = db.Categories.Find(id);
            if (category == null)
            {
                return HttpNotFound();
            }
            return View(category);
        }

        // POST: Categories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Category category = db.Categories.Find(id);
            db.Categories.Remove(category);
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
