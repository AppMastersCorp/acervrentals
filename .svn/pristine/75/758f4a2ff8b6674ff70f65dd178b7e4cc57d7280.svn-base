using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{

    public class FaqVM
    {
        public int FaqId { get; set; }
        [Required(ErrorMessage = "Please Enter Faq Description.")]
        public string Description { get; set; }
        public Nullable<bool> isactive { get; set; }
        public Nullable<System.DateTime> createdon { get; set; }
        public Nullable<System.DateTime> updatedon { get; set; }
        [Required(ErrorMessage = "Please Enter Faq Result.")]
        public string Faqresult { get; set; }
    }
}