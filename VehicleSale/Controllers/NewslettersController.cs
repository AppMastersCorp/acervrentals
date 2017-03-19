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
    [CustomAuthorize(Roles = "Admin")]
    public class NewslettersController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: Newsletters
        public ActionResult Index()
        {
            return View(db.Newsletters.ToList());
        }

        // GET: Newsletters/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Newsletter newsletter = db.Newsletters.Find(id);
            if (newsletter == null)
            {
                return HttpNotFound();
            }
            return View(newsletter);
        }

        // GET: Newsletters/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Newsletters/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Email,isactive")] NewsletterVM newslettervm)
        {
            if (ModelState.IsValid)
            {

               var Emailid = (from Email in db.Newsletters
                                   where Email.Email == newslettervm.Email
                                   select new
                                   {
                                       Email.Email
                                   }).FirstOrDefault();
                if (Emailid == null)
                {
                    Newsletter newsletter = new Newsletter();
                    newsletter.Email = newslettervm.Email.ToLower();
                    newsletter.createdon = DateTime.Now;
                    newsletter.isactive = newslettervm.isactive;
                    newsletter.Id = newslettervm.Id;
                    newsletter.updatedon = DateTime.Now;
                    db.Newsletters.Add(newsletter);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                 else {
                      }
            }

            return View(newslettervm);
        }

        // GET: Newsletters/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Newsletter newsletter = db.Newsletters.Find(id);
            NewsletterVM newslettervm = new NewsletterVM();
            newslettervm.Email = newsletter.Email;
            newslettervm.createdon = newsletter.createdon;
            newslettervm.isactive = newsletter.isactive;
            newslettervm.Id = newsletter.Id;
            newslettervm.updatedon = newsletter.updatedon;
            if (newsletter == null)
            {
                return HttpNotFound();
            }
            return View(newslettervm);
        }

        // POST: Newsletters/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Email,isactive")] NewsletterVM newslettervm)
        {
            if (ModelState.IsValid)
            {
                var Emailid = db.Newsletters.Where(t => t.Email.ToLower() == newslettervm.Email.ToLower() && t.isactive== newslettervm.isactive);
                if (Emailid != null)
                {
                    var createton=  (from date in db.Newsletters
                    where date.Id == newslettervm.Id 
                    select new
                    {
                        date.createdon
                    }).First();
                    Newsletter newsletter = new Newsletter();
                    newsletter.Email = newslettervm.Email;
                    newsletter.isactive = newslettervm.isactive;
                    newsletter.Id = newslettervm.Id;
                    newsletter.createdon = createton.createdon;
                    newsletter.updatedon = DateTime.Now;
                    db.Entry(newsletter).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                else {

                }
            }
            return View(newslettervm);
        }

        // GET: Newsletters/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Newsletter newsletter = db.Newsletters.Find(id);
            if (newsletter == null)
            {
                return HttpNotFound();
            }
            return View(newsletter);
        }

        // POST: Newsletters/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Newsletter newsletter = db.Newsletters.Find(id);
            db.Newsletters.Remove(newsletter);
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
