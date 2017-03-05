using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class UploadFileViewModel
    {
        public int FolderId { get; set; }
        public string FileName { get; set; }
        public bool IsDeleted { get; set; }

        public IEnumerable<HttpPostedFileBase> FileList { get; set; }
    }

 

}
