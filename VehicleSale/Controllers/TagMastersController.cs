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
using System.IO;

namespace VehicleSale.Controllers
{
    public class TagMastersController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: TagMasters
        public ActionResult Index()
        {
            return View(db.TagMasters.ToList());
        }

        // GET: TagMasters/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TagMaster tagMaster = db.TagMasters.Find(id);
            if (tagMaster == null)
            {
                return HttpNotFound();
            }
            return View(tagMaster);
        }

        // GET: TagMasters/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TagMasters/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,TagName,TagIconUrl,IsActive")] TagMasterVM tagMasterVM, HttpPostedFileBase TagIconUrl)
        {
            if (TagIconUrl == null)
            {
                ModelState.AddModelError("TagIconUrl", "Please select Tag Icon");
            }
            //if (BackgroundUrl == null)
            //{
            //    ModelState.AddModelError("BackgroundUrl", "Please select Background Image");
            //}
            if (ModelState.IsValid)
            {
                if (TagIconUrl.ContentLength > 0 && TagIconUrl != null)
                {
                    HttpPostedFileBase files = TagIconUrl;
                    if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                    {
                        var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                        string path = Server.MapPath("~/Images/") + fileName;

                        tagMasterVM.TagIconUrl = "/Images/" + fileName;
                        files.SaveAs(path);

                    }
                }
               
                TagMaster tagMaster = new TagMaster();
                tagMaster.ID = tagMasterVM.ID;
                tagMaster.TagName = tagMasterVM.TagName;
                tagMaster.TagIconUrl = tagMasterVM.TagIconUrl;
               
                tagMaster.IsActive = tagMasterVM.IsActive; 
                db.TagMasters.Add(tagMaster);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tagMasterVM);
        }

        // GET: TagMasters/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TagMaster tagMaster = db.TagMasters.Find(id);
            if (tagMaster == null)
            {
                return HttpNotFound();
            }
            TagMasterVM tagMasterVM = new TagMasterVM();
            tagMasterVM.ID = tagMaster.ID;
            tagMasterVM.TagName = tagMaster.TagName;
            tagMasterVM.TagIconUrl = tagMaster.TagIconUrl;
          
            tagMasterVM.IsActive = tagMaster.IsActive;
            return View(tagMasterVM);
        }

        // POST: TagMasters/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,TagName,TagIconUrl,IsActive")] TagMasterVM tagMasterVM, HttpPostedFileBase TagIconUrl)
        {
            if (ModelState.IsValid)
            {
                TagMaster tagMasters = db.TagMasters.Where(t => t.ID == tagMasterVM.ID).FirstOrDefault();
                if (TagIconUrl != null && TagIconUrl.ContentLength > 0)
                {
                   
                    HttpPostedFileBase files = TagIconUrl;
                    if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                    {
                        var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                        string path = Server.MapPath("~/Images/") + fileName;
                        tagMasters.TagIconUrl = "/Images/" + fileName;
                        tagMasterVM.TagIconUrl = "/Images/" + fileName;
                        files.SaveAs(path);
                    }
                }
                //if (BackgroundUrl.ContentLength > 0 && BackgroundUrl != null)
                //{
                   
                //    HttpPostedFileBase files = BackgroundUrl;
                //    if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                //    {
                //        var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                //        string path = Server.MapPath("~/Images/") + fileName;
                //        tagMasters.BackgroundUrl = "/Images/" + fileName;
                //        tagMasterVM.TagIconUrl = "/Images/" + fileName;
                //        files.SaveAs(path);
                //    }
                //}
                tagMasters.ID = tagMasterVM.ID;
                tagMasters.TagName = tagMasterVM.TagName;
                db.Entry(tagMasters).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tagMasterVM);
        }

        // GET: TagMasters/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TagMaster tagMaster = db.TagMasters.Find(id);
            if (tagMaster == null)
            {
                return HttpNotFound();
            }
            return View(tagMaster);
        }

        // POST: TagMasters/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TagMaster tagMaster = db.TagMasters.Find(id);
            db.TagMasters.Remove(tagMaster);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult ImageDelete(int? id)
        {
            TagMaster tagMaster = db.TagMasters.Find(id);

            if (tagMaster == null)
            {
                return HttpNotFound();
            }

            tagMaster.BackgroundUrl = null;
            db.Entry(tagMaster).State = EntityState.Modified;
            db.SaveChanges();
            return Content("true");
        }

        [HttpPost]
        public ActionResult LogoImageDelete(int? id)
        {
            TagMaster tagMaster = db.TagMasters.Find(id);

            if (tagMaster == null)
            {
                return HttpNotFound();
            }

            tagMaster.TagIconUrl = null;
            db.Entry(tagMaster).State = EntityState.Modified;
            db.SaveChanges();
            return Content("true");
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
