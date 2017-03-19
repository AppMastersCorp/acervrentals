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
    public class MakesController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: Makes
        public ActionResult Index()
        {
            return View(db.Makes.ToList());
        }

        // GET: Makes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Make make = db.Makes.Find(id);
            if (make == null)
            {
                return HttpNotFound();
            }
            return View(make);
        }

        // GET: Makes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Makes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,IsActive")] MakeVM makeVM)
        {
            if (ModelState.IsValid)
            {
                Make make = new Make();
                make.ID = makeVM.ID;
                make.Name = makeVM.Name;
                make.IsActive = makeVM.IsActive;
                db.Makes.Add(make);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(makeVM);
        }

        // GET: Makes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Make make = db.Makes.Find(id);
            MakeVM makeVM = new MakeVM();
            makeVM.ID = make.ID;
            makeVM.Name = make.Name;
            makeVM.IsActive = make.IsActive;
            if (make == null)
            {
                return HttpNotFound();
            }
            return View(makeVM);
        }

        // POST: Makes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,IsActive")] MakeVM makeVM)
        {
            if (ModelState.IsValid)
            {
                Make make = new Make();
                make.ID = makeVM.ID;
                make.Name = makeVM.Name;
                make.IsActive = makeVM.IsActive;
                db.Entry(make).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(makeVM);
        }

        // GET: Makes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Make make = db.Makes.Find(id);
            if (make == null)
            {
                return HttpNotFound();
            }
            return View(make);
        }

        // POST: Makes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Make make = db.Makes.Find(id);
            db.Makes.Remove(make);
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
