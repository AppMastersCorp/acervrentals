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
    public class AmentiesMastersController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: AmentiesMasters
        public ActionResult Index()
        {
            return View(db.AmentiesMasters.ToList());
        }

        // GET: AmentiesMasters/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AmentiesMaster amentiesMaster = db.AmentiesMasters.Find(id);
            if (amentiesMaster == null)
            {
                return HttpNotFound();
            }
            return View(amentiesMaster);
        }

        // GET: AmentiesMasters/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: AmentiesMasters/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,Description")] AmentiesMasterVM amentiesMastervm, HttpPostedFileBase ImageUrl)
        {
            AmentiesMaster amentiesMaster = new AmentiesMaster();
            if (ImageUrl == null )
            {
                ModelState.AddModelError("ImageUrl", "Please select image");
            }

            if (ModelState.IsValid)
            {
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
                            amentiesMaster.ImageUrl = "/ProductImage/" + fileName;
                            files.SaveAs(path);

                        }
                    }
                }
                amentiesMaster.Name = amentiesMastervm.Name;
                amentiesMaster.Description = amentiesMastervm.Description;
                amentiesMaster.ID = amentiesMastervm.ID;
                amentiesMaster.IsActive = true;
                db.AmentiesMasters.Add(amentiesMaster);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(amentiesMastervm);
        }

        // GET: AmentiesMasters/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AmentiesMaster amentiesMaster = db.AmentiesMasters.Find(id);
            AmentiesMasterVM amentiesMastervm = new AmentiesMasterVM();
            amentiesMastervm.ID = amentiesMaster.ID;
            amentiesMastervm.ImageUrl = amentiesMaster.ImageUrl;
            amentiesMastervm.Description = amentiesMaster.Description;
            amentiesMastervm.IsActive = amentiesMaster.IsActive;
            amentiesMastervm.Name = amentiesMaster.Name;
            if (amentiesMaster == null)
            {
                return HttpNotFound();
            }
            return View(amentiesMastervm);
        }

        // POST: AmentiesMasters/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,Description")] AmentiesMasterVM amentiesMastervm, HttpPostedFileBase ImageUrl)
        {
            if (ModelState.IsValid)
            {
                AmentiesMaster amentiesMaster = db.AmentiesMasters.Where(am => am.ID == amentiesMastervm.ID).FirstOrDefault();
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
                            amentiesMaster.ImageUrl = "/ProductImage/" + fileName;
                        }
                    }
                }
                amentiesMaster.Description = amentiesMastervm.Description;
                amentiesMaster.ID = amentiesMastervm.ID;
                amentiesMaster.Name = amentiesMastervm.Name;
                amentiesMaster.IsActive = true;


                db.Entry(amentiesMaster).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(amentiesMastervm);
        }

        // GET: AmentiesMasters/Delete/5
        [HttpPost]
        public ActionResult ImageDelete(int? id)
        {
            AmentiesMaster AmentiesMaster = db.AmentiesMasters.Find(id);

            if (AmentiesMaster == null)
            {
                return HttpNotFound();
            }

            AmentiesMaster.ImageUrl = null;
            db.Entry(AmentiesMaster).State = EntityState.Modified;
            db.SaveChanges();
            return Content("true");
        }
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AmentiesMaster amentiesMaster = db.AmentiesMasters.Find(id);
            if (amentiesMaster == null)
            {
                return HttpNotFound();
            }
            return View(amentiesMaster);
        }

        // POST: AmentiesMasters/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AmentiesMaster amentiesMaster = db.AmentiesMasters.Find(id);
            db.AmentiesMasters.Remove(amentiesMaster);
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
