using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using ClassLibrary1;

namespace VehicleSale.Controllers
{
    public class EditingController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();
        [HttpPost]
        [ValidateInput(false)]
        public bool SaveContent(Widget model)
        {
            var result = db.Widgets.Where(x => x.PageId == model.PageId && x.WidgetId == model.WidgetId).FirstOrDefault();
            if (result != null)
            {
                result.PageId = model.PageId;
                result.WidgetId = model.WidgetId;
                result.Text = model.Text;
                result.UpdatedOn = DateTime.Now;
                db.Entry(result).State = EntityState.Modified;
                db.SaveChanges();
                return true;
            }
            else
            {
                Widget wig = new Widget();
                wig.WidgetId = model.WidgetId;
                wig.Text = model.Text;
                wig.PageId = model.PageId;
                wig.CreatedOn = DateTime.Now;
                wig.UpdatedOn = DateTime.Now;
                db.Entry(wig).State = EntityState.Added;
                db.SaveChanges();
                return true;
            }
        }


        [ValidateInput(false)]
        public string RenderZone(int PageId, string WidgetId)
        {
            var result = db.Widgets.Where(x => x.PageId == PageId && x.WidgetId == WidgetId).SingleOrDefault();
            return result.Text;
        }


        public string GetSingleImage(int PageId, string ImageId)
        {
            var result = db.PageImages.Where(x => x.PageId == PageId && x.ImageId == ImageId).SingleOrDefault();
            if (result != null)
            {
                return Convert.ToString(result.ImagePath);
            }
            return string.Empty;
        }

    }
}