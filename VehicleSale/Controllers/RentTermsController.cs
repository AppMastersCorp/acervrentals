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
    public class RentTermsController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: RentTerms
        public ActionResult Index()
        {
            return View(db.RentTerms.ToList());
        }



        // GET: RentTerms/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: RentTerms/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Term")] RentTermVM rentTermvm)
        {
            if (ModelState.IsValid)
            {
                RentTerm rentTerm = new RentTerm();
                rentTerm.ID = rentTermvm.ID;
                rentTerm.Term = rentTermvm.Term;
                rentTerm.IsActive = true;

                db.RentTerms.Add(rentTerm);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(rentTermvm);
        }

        // GET: RentTerms/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            RentTerm rentTerm = db.RentTerms.Find(id);
            RentTermVM rentTermvm = new RentTermVM();
            rentTermvm.ID = rentTerm.ID;
            rentTermvm.Term = rentTerm.Term;
            rentTerm.IsActive = true;
            if (rentTerm == null)
            {
                return HttpNotFound();
            }
            return View(rentTermvm);
        }

        // POST: RentTerms/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Term")] RentTermVM rentTermvm)
        {
            if (ModelState.IsValid)
            {
                RentTerm rentTerm = new RentTerm();
                rentTerm.ID = rentTermvm.ID;
                rentTerm.IsActive = rentTermvm.IsActive;
                rentTerm.Term = rentTermvm.Term;
                db.Entry(rentTerm).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(rentTermvm);
        }

        // GET: RentTerms/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            RentTerm rentTerm = db.RentTerms.Find(id);
            if (rentTerm == null)
            {
                return HttpNotFound();
            }
            return View(rentTerm);
        }

        // POST: RentTerms/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            RentTerm rentTerm = db.RentTerms.Find(id);
            db.RentTerms.Remove(rentTerm);
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
