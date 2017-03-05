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
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
using System.Web.Configuration;

namespace VehicleSale.Controllers
{
    [Authorize(Roles = "Admin")]
    public class VehicleImagesController : Controller
    {

        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: VehicleImages
        public ActionResult Index(int? Id)
        {
            var vehicleImages = db.VehicleImages.Where(v => v.VehicleID == Id).Include(v => v.Vehicle);
            ViewBag.ID = Id;
            return View(vehicleImages.ToList());
        }

        // GET: VehicleImages/Create
        public ActionResult Create(int? Id)
        {
            ViewBag.VehicleID = new SelectList(db.Vehicles.Where(v => v.ID == Id), "ID", "Title");
            ViewBag.ID = Id;
            return View();
        }
        Account account = new Account(WebConfigurationManager.AppSettings["CloudName"],
             WebConfigurationManager.AppSettings["ApiKey"],
             WebConfigurationManager.AppSettings["ApiSecret"]);
        // POST: VehicleImages/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,VehicleID")] VehicleImage vehicleImage, HttpPostedFileBase ImageUrl, int? Id)
        {
            if (ImageUrl == null)
            {
                ModelState.AddModelError("ImageUrl", "Please select image");
            }
            if (ModelState.IsValid)
            {
                Cloudinary cloudinary = new Cloudinary(account);
                vehicleImage.IsActive = true;
                vehicleImage.VehicleID = Id;
                ViewBag.ID = vehicleImage.VehicleID;
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
                            vehicleImage.ImageUrl = "/ProductImage/" + fileName;
                            files.SaveAs(path);
                            var uploadParams = new ImageUploadParams()
                            {
                                File = new FileDescription(path)
                            };
                            var uploadResult = cloudinary.Upload(uploadParams);
                            vehicleImage.PublicKey = uploadResult.PublicId;
                        }
                    }
                }
                db.VehicleImages.Add(vehicleImage);
                db.SaveChanges();
                return RedirectToAction("Index", new { id = Id });
            }

            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleImage.VehicleID);
            return View(vehicleImage);
        }

        // GET: VehicleImages/Edit/5
        public ActionResult Edit(int? id)
        {           
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleImage vehicleImage = db.VehicleImages.Find(id);
            ViewBag.ID = vehicleImage.VehicleID;
            if (vehicleImage == null)
            {
                return HttpNotFound();
            }
            ViewBag.VehicleID = new SelectList(db.Vehicles.Where(v => v.ID == vehicleImage.VehicleID), "ID", "Title", vehicleImage.VehicleID);
            return View(vehicleImage);
        }

        // POST: VehicleImages/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,VehicleID")] VehicleImage vehicleImage, HttpPostedFileBase ImageUrl)
        {
            Cloudinary cloudinary = new Cloudinary(account);
            if (ModelState.IsValid)
            {
                vehicleImage.IsActive = true;
                vehicleImage.VehicleID = Convert.ToInt32(Request.Form["hdnVehicleID"]);
                ViewBag.ID = vehicleImage.VehicleID;
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
                            vehicleImage.ImageUrl = "/ProductImage/" + fileName;
                            files.SaveAs(path);
                            var uploadParams = new ImageUploadParams()
                            {
                                File = new FileDescription(path)
                            };
                            var uploadResult = cloudinary.Upload(uploadParams);
                            vehicleImage.PublicKey = uploadResult.PublicId;
                            db.Entry(vehicleImage).State = EntityState.Modified;
                            db.SaveChanges();
                        }
                    }
                }
               
            
                return RedirectToAction("Index", new { id = vehicleImage.VehicleID });
            }
            ViewBag.VehicleID = new SelectList(db.Vehicles, "ID", "Title", vehicleImage.VehicleID);
            return View(vehicleImage);
        }

        // GET: VehicleImages/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VehicleImage vehicleImage = db.VehicleImages.Find(id);
            ViewBag.ID = vehicleImage.VehicleID;
            if (vehicleImage == null)
            {
                return HttpNotFound();
            }
            return View(vehicleImage);
        }

        // POST: VehicleImages/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            VehicleImage vehicleImage = db.VehicleImages.Find(id);
            ViewBag.ID = vehicleImage.VehicleID;
            db.VehicleImages.Remove(vehicleImage);
            
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
