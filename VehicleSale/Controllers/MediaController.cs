﻿using ClassLibrary1;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;
using VehicleSale.ViewModels;

namespace VehicleSale.Controllers
{
    [CustomAuthorize(Roles = "Admin")]
    public class MediaController : Controller
    {
        Account account = new Account(WebConfigurationManager.AppSettings["CloudName"],
            WebConfigurationManager.AppSettings["ApiKey"],
            WebConfigurationManager.AppSettings["ApiSecret"]);
        private VehicleSaleEntities db = new VehicleSaleEntities();
        // GET: Media
        public ActionResult Create()
        {
            return View(db.Banners.ToList());
        }
        public static string filepathtosave;

        [HttpPost]
        public void Upload(string link, string desc, string title, int id, bool isactive)
        {
            if (Request.Files.Count > 0)
            {
                Cloudinary cloudinary = new Cloudinary(account);
                for (int i = 0; i < Request.Files.Count; i++)
                {
                    // var desc = Request.Form["Description1"];
                    var file = Request.Files[i];
                    var fileName = Path.GetFileName(file.FileName);
                    filepathtosave = "/images/Banners/" + fileName;                   
                    var path = Path.Combine(Server.MapPath("~/images/Banners/"), fileName);
                    file.SaveAs(path);
                    var uploadParams = new ImageUploadParams()
                    {
                        File = new FileDescription(path)
                    };
                    var uploadResult = cloudinary.Upload(uploadParams);  
                    Banner banner = db.Banners.Single(ud => ud.ID == id);
                    banner.Title = title;
                    banner.BannerLink = link;
                    banner.Description = desc;
                    banner.BannerUrl = filepathtosave;
                    banner.IsActive = isactive;
                    banner.PublicKey = uploadResult.PublicId;
                    db.Entry(banner).State = EntityState.Modified;
                    db.SaveChanges();
                }
            }
            else
            {
                Banner banner = db.Banners.Single(ud => ud.ID == id);
                banner.Title = title;
                banner.BannerLink = link;
                banner.Description = desc;
                banner.BannerUrl = banner.BannerUrl;
                banner.IsActive = isactive;
                db.Entry(banner).State = EntityState.Modified;
                db.SaveChanges();
            }

        }


        public ActionResult MediaCategory()
        {
            //ViewBag.folderId=db.Folders.ToList();
            //ViewBag.image = db.UploadFiles.ToList();

            List<ClassLibrary1.Folder> folderlist = db.Folders.ToList();

            foreach (var item in folderlist)
            {
                item.UploadFiles = db.UploadFiles.Where(x => x.FolderId == item.Id).ToList();
            }
            return View(folderlist);
            //return RedirectToAction("MediaCategory", "Media");

        }
        [HttpPost]
        public ActionResult MediaCategory(UploadFileViewModel model, HttpPostedFileBase uploadfile)
        {

            if (uploadfile.ContentLength > 0)
            {
                if (ModelState.IsValid)
                {
                    HttpFileCollectionBase files = Request.Files;
                    DataTable dt = new DataTable { Columns = { new DataColumn("Path") } };
                    var folder = db.Folders.Where(x => x.Id == model.FolderId).FirstOrDefault();
                    for (int i = 0; i < files.Count; i++)
                    {

                        HttpPostedFileBase file = files[i];

                        string filename = System.IO.Path.GetRandomFileName() + file.FileName;

                        //string path=Server.MapPath("~/Content/Upload/" + folder.FolderName), fileName);
                        if (folder.Id != 1)
                        {
                            string path1 = Server.MapPath("~/Content/Upload/" + folder.FolderName + "/" + filename);
                            string path2 = Server.MapPath("~/Content/Upload/ShowAll" + "/" + filename);
                            dt.Rows.Add(file.FileName);
                            file.SaveAs(path1);
                            file.SaveAs(path2);
                        }
                        else
                        {
                            string path = Server.MapPath("~/Content/Upload/" + folder.FolderName + "/" + filename);

                            dt.Rows.Add(file.FileName);
                            file.SaveAs(path);
                        }

                        ViewData.Model = dt.AsEnumerable();
                        UploadFile tbl = new UploadFile();
                        tbl.FolderId = model.FolderId;

                        tbl.FileName = filename;
                        tbl.IsDeleted = false;
                        db.UploadFiles.Add(tbl);
                        db.SaveChanges();
                    }
                }
            }
            
            return RedirectToAction("MediaCategory", "Media");
        }
       
        public ActionResult AddFolder()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddFolder(FoldersViewModel model)
        {
            ClassLibrary1.Folder tblFolder = new ClassLibrary1.Folder();
            tblFolder.FolderName = model.FolderName.Replace(" ", "_");
            tblFolder.CreatedOn = DateTime.Now;
            tblFolder.IsDeleted = false;
            db.Folders.Add(tblFolder);
            db.SaveChanges();

            var path = Server.MapPath("~/Content/Upload/" + tblFolder.FolderName);
            Directory.CreateDirectory(path);
            return RedirectToAction("MediaCategory", "Media");

        }

        public JsonResult FolderListForLayout()
        {
            List<FolderList> folderList = new List<FolderList>();
            folderList = db.Folders.Select(x => new FolderList
            {
                FolderId = x.Id,
                FolderName = x.FolderName
            }).ToList();



            foreach (var item in folderList)
            {
                item.imageList = db.UploadFiles.Where(x => x.FolderId == item.FolderId).Select(x => new ImageList
                {
                    ImageId = x.Id,
                    FolderId = x.FolderId,
                    ImageName = x.FileName
                }).ToList();

            }


            return Json(new { folderList }, JsonRequestBehavior.AllowGet);
        }
        public class FolderList
        {

            public int FolderId { get; set; }
            public string FolderName { get; set; }
            public List<ImageList> imageList { get; set; }
        }
        public class ImageList
        {
            public int ImageId { get; set; }
            public Nullable<int> FolderId { get; set; }
            public string ImageName { get; set; }
        }

        public JsonResult SaveSingleImage(string ImageUrl, string ImageId, int pageId)
        {
            var exist = db.PageImages.Where(x => x.ImageId == ImageId && x.PageId == pageId).FirstOrDefault();
            try
            {
                if (exist == null)
                {
                    PageImage tblImage = new PageImage();
                    tblImage.PageId = pageId;
                    tblImage.ImageId = ImageId;
                    tblImage.ImagePath = ImageUrl;
                    db.PageImages.Add(tblImage);
                }
                else
                {
                    exist.ImagePath = ImageUrl;
                    db.Entry(exist).State = EntityState.Modified;

                }
                db.SaveChanges();
            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        Trace.TraceInformation("Property: {0} Error: {1}",
                                                validationError.PropertyName,
                                                validationError.ErrorMessage);
                    }
                }
            }

            var Image = db.PageImages.Where(x => x.PageId == pageId && x.ImageId == ImageId).FirstOrDefault();
            var result = Image.ImagePath;

            return Json(new { result }, JsonRequestBehavior.AllowGet);
        }

    }
}