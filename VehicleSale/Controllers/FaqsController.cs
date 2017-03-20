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
    public class FaqsController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: Faqs
        public ActionResult Index()
        {
            return View(db.Faqs.ToList());
        }

        // GET: Faqs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Faq faq = db.Faqs.Find(id);
            if (faq == null)
            {
                return HttpNotFound();
            }
            return View(faq);
        }

        // GET: Faqs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Faqs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "FaqId,Description,isactive,Faqresult")] FaqVM faqVM)
        {
            if (ModelState.IsValid)
            {
                Faq faq = new Faq();
                faq.FaqId = faqVM.FaqId;
                faq.Faqresult = faqVM.Faqresult;
                faq.Description = faqVM.Description;
                faq.isactive = faqVM.isactive;
                faq.createdon = DateTime.Now;
                faq.updatedon = DateTime.Now;
                db.Faqs.Add(faq);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(faqVM);
        }

        // GET: Faqs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Faq faq = db.Faqs.Find(id);
            FaqVM faqVM = new FaqVM();

            faqVM.FaqId = faq.FaqId;
            faqVM.Faqresult = faq.Faqresult;
            faqVM.Description = faq.Description;
            faqVM.isactive = faq.isactive;
            faqVM.createdon = DateTime.Now;
            faqVM.updatedon = DateTime.Now;
            if (faq == null)
            {
                return HttpNotFound();
            }
            return View(faqVM);
        }

        // POST: Faqs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "FaqId,Description,isactive,Faqresult")] FaqVM faqVM)
        {
            if (ModelState.IsValid)
            {
                var date = (from createdon in db.Faqs
                            where createdon.FaqId == faqVM.FaqId
                            select new
                            {
                                createdon.createdon
                            }).First();

                Faq faq = new Faq();
                faq.FaqId = faqVM.FaqId;
                faq.Faqresult = faqVM.Faqresult;
                faq.Description = faqVM.Description;
                faq.isactive = faqVM.isactive;
                faq.createdon = date.createdon;
                faq.updatedon = DateTime.Now;
                db.Entry(faq).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(faqVM);
        }

        // GET: Faqs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Faq faq = db.Faqs.Find(id);
            if (faq == null)
            {
                return HttpNotFound();
            }
            return View(faq);
        }

        // POST: Faqs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Faq faq = db.Faqs.Find(id);
            db.Faqs.Remove(faq);
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
