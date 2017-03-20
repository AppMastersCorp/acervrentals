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
    public class ModelsmasterController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: Modelsmaster
        public ActionResult Index()
        {
            return View(db.Models.ToList());
        }

        // GET: Modelsmaster/Details/5
    

        // GET: Modelsmaster/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Modelsmaster/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,IsActive")] ModelsVM modelvm)
        {
            if (ModelState.IsValid)
            {
                Model model = new Model();
                model.ID = modelvm.ID;
                model.Name = modelvm.Name;
                model.IsActive = true;
                db.Models.Add(model);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(modelvm);
        }

        // GET: Modelsmaster/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Model model = db.Models.Find(id);
            ModelsVM modelvm = new ModelsVM();
            modelvm.ID = model.ID;
            modelvm.Name = model.Name;
            model.IsActive = true;
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(modelvm);
        }

        // POST: Modelsmaster/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,IsActive")]  ModelsVM modelvm)
        {
            if (ModelState.IsValid)
            {
                Model model = new Model();
                model.ID = modelvm.ID;
                model.Name= modelvm.Name;
                model.IsActive = true;
                db.Entry(model).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(modelvm);
        }

        // GET: Modelsmaster/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Model model = db.Models.Find(id);
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }

        // POST: Modelsmaster/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Model model = db.Models.Find(id);
            db.Models.Remove(model);
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
