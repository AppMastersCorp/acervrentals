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
    public class TestimonialsController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: Testimonials
        public ActionResult Index()
        {
            return View(db.Testimonials.ToList());
        }

        // GET: Testimonials/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Testimonial testimonial = db.Testimonials.Find(id);
            if (testimonial == null)
            {
                return HttpNotFound();
            }
            return View(testimonial);
        }

        // GET: Testimonials/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Testimonials/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Description,Title,Summary,ImageURl,LogoUrl,isactive,Rating")] TestimonialVM testimonialvm, HttpPostedFileBase ImageURl, HttpPostedFileBase LogoUrl)
        {
            if (ImageURl == null)
            {
                ModelState.AddModelError("ImageURl", "Please select image");
            }           
            if (LogoUrl == null)
            {
                ModelState.AddModelError("LogoUrl", "Please select logo");
            }
            if (ModelState.IsValid)
            {
                if (ImageURl.ContentLength > 0 && ImageURl != null)
                {
                   
                    HttpPostedFileBase files = ImageURl;
                    if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                    {
                        var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                        string path = Server.MapPath("~/Images/testimonlasimages/") + fileName;
                   
                        testimonialvm.ImageURl = "/Images/testimonlasimages/" + fileName;
                        files.SaveAs(path);

                    }

            
                }
                if (LogoUrl.ContentLength > 0 && LogoUrl != null)
                {
                   
                    HttpPostedFileBase files = LogoUrl;
                    if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                    {
                        var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                        string path = Server.MapPath("~/Images/testimonlasimages/") + fileName;
                        
                        testimonialvm.LogoUrl = "/Images/testimonlasimages/" + fileName;
                        files.SaveAs(path);

                    }
                }

                Testimonial testimonial = new Testimonial();
                testimonial.ID = testimonialvm.ID;
                testimonial.Description = testimonialvm.Description;
                testimonial.Title = testimonialvm.Title;
                testimonial.Summary = testimonialvm.Summary;
                testimonial.Rating = testimonialvm.Rating;
                testimonial.ImageURl = testimonialvm.ImageURl;
                testimonial.LogoUrl = testimonialvm.LogoUrl;
                testimonial.isactive = testimonialvm.isactive;
                testimonial.createdon = DateTime.Now;
                testimonial.updatedon = DateTime.Now;
                db.Testimonials.Add(testimonial);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(testimonialvm);
        }

        // GET: Testimonials/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Testimonial testimonial = db.Testimonials.Find(id);
            TestimonialVM testimonialvm = new TestimonialVM();
            testimonialvm.ID = testimonial.ID;
            testimonialvm.Description = testimonial.Description;
            testimonialvm.Title = testimonial.Title;
            testimonialvm.Summary = testimonial.Summary;
            testimonialvm.Rating = testimonial.Rating;
            testimonialvm.LogoUrl = testimonial.LogoUrl;
            testimonialvm.ImageURl = testimonial.ImageURl;
            testimonialvm.isactive = testimonial.isactive;
            testimonialvm.createdon = DateTime.Now;
            testimonialvm.updatedon = DateTime.Now;
            if (testimonial == null)
            {
                return HttpNotFound();
            }
            return View(testimonialvm);
        }

        [HttpPost]
        public ActionResult ImageDelete(int? id)
        {
            Testimonial testimonial = db.Testimonials.Find(id);

            if (testimonial == null)
            {
                return HttpNotFound();
            }

            testimonial.ImageURl = null;
            db.Entry(testimonial).State = EntityState.Modified;
            db.SaveChanges();
            return Content("true");
        }

        [HttpPost]
        public ActionResult LogoImageDelete(int? id)
        {
            Testimonial testimonial = db.Testimonials.Find(id);

            if (testimonial == null)
            {
                return HttpNotFound();
            }

            testimonial.LogoUrl = null;
            db.Entry(testimonial).State = EntityState.Modified;
            db.SaveChanges();
            return Content("true");
        }


        // POST: Testimonials/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Description,Title,Summary,ImageURl,isactive,Rating")] TestimonialVM testimonialvm, HttpPostedFileBase ImageURl, HttpPostedFileBase LogoUrl)
        {
            
            if (ModelState.IsValid)
            {
                Testimonial testimonial = db.Testimonials.Where(t => t.ID == testimonialvm.ID).FirstOrDefault();
                if (ImageURl != null && ImageURl.ContentLength > 0  )
                {
                    //HttpFileCollectionBase file = Request.Files;
                    //DataTable dt = new DataTable { Columns = { new DataColumn("Path") } };
                    //for (int i = 0; i < file.Count; i++)
                    //{
                    HttpPostedFileBase files = ImageURl;
                    if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                    {
                        var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                        string path = Server.MapPath("~/Images/testimonlasimages/") + fileName;
                        //dt.Rows.Add(files.FileName);
                        testimonial.ImageURl = "/Images/testimonlasimages/" + fileName;
                        testimonialvm.ImageURl = "/Images/testimonlasimages/" + fileName;
                        files.SaveAs(path);

                    }

                    // }

                }
                if (LogoUrl.ContentLength > 0 && LogoUrl != null)
                {
                    //HttpFileCollectionBase file = Request.Files;
                    //DataTable dt = new DataTable { Columns = { new DataColumn("Path") } };
                    //for (int i = 0; i < file.Count; i++)
                    //{
                    HttpPostedFileBase files = LogoUrl;
                    if (!string.IsNullOrEmpty(Path.GetFileName(files.FileName)))
                    {
                        var fileName = Guid.NewGuid() + Path.GetFileName(files.FileName);
                        string path = Server.MapPath("~/Images/testimonlasimages/") + fileName;
                        //dt.Rows.Add(files.FileName);
                        testimonial.LogoUrl = "/Images/testimonlasimages/" + fileName;
                        testimonialvm.LogoUrl = "/Images/testimonlasimages/" + fileName;
                        files.SaveAs(path);

                    }

                    // }

                }
                testimonial.ID = testimonialvm.ID;
                testimonial.Description = testimonialvm.Description;
                testimonial.Title = testimonialvm.Title;
                testimonial.Summary = testimonialvm.Summary;
                testimonial.Rating = testimonialvm.Rating;
                
                testimonial.isactive = testimonialvm.isactive;
                testimonial.createdon = DateTime.Now;
                testimonial.updatedon = DateTime.Now;
                db.Entry(testimonial).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(testimonialvm);
        }

        // GET: Testimonials/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Testimonial testimonial = db.Testimonials.Find(id);
            if (testimonial == null)
            {
                return HttpNotFound();
            }
            return View(testimonial);
        }

        // POST: Testimonials/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Testimonial testimonial = db.Testimonials.Find(id);
            db.Testimonials.Remove(testimonial);
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
