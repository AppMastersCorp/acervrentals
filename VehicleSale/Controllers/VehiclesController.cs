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
using Newtonsoft.Json;

namespace VehicleSale.Controllers
{
    [Authorize(Roles = "Admin")]
    public class VehiclesController : Controller
    {
        private VehicleSaleEntities db = new VehicleSaleEntities();

        // GET: Vehicles
        public ActionResult Index()
        {
            var vehicles = db.Vehicles.Where(x => x.IsActive == true).Include(v => v.Brand).Include(v => v.Category).Include(v => v.Model).Include(v => v.VehicleType);
            return View(vehicles.ToList());
        }


        // GET: Vehicles/Create
        public ActionResult Create()
        {
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name");
            ViewBag.CategoryID = new SelectList(db.Categories, "ID", "Name");
            ViewBag.ModelID = new SelectList(db.Models, "ID", "Name");
            ViewBag.MakeID = new SelectList(db.Makes, "ID", "Name");
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name");
            ViewBag.Tags = db.TagMasters.Where(x => x.IsActive == true).ToList();

            ViewBag.Amenties = db.AmentiesMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.FeatureMaster = db.FeaturesMasters.Where(x => x.IsActive == true).ToList();
            return View();
        }

        // POST: Vehicles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(VehicleVM vehicleVM, string Tags, string features)
        {
            ViewBag.Tags = db.TagMasters.Where(x => x.IsActive == true).ToList();
            if (ModelState.IsValid)
            {
                if (!string.IsNullOrEmpty(vehicleVM.OtherCategory))
                {
                    Category category = new Category();
                    category.Name = vehicleVM.OtherCategory;
                    category.IsActive = true;
                    category.VehicleTypeID = vehicleVM.VehicleTypeID;
                    db.Categories.Add(category);
                    db.SaveChanges();
                    vehicleVM.CategoryID = category.ID;
                }
                if (!string.IsNullOrEmpty(vehicleVM.OtherBrand))
                {
                    Brand brand = new Brand();
                    brand.Name = vehicleVM.OtherBrand;
                    brand.IsActive = true;
                    db.Brands.Add(brand);
                    db.SaveChanges();
                    vehicleVM.BrandID = brand.ID;
                }
                if (!string.IsNullOrEmpty(vehicleVM.OtherMake))
                {
                    Make make = new Make();
                    make.Name = vehicleVM.OtherMake;
                    make.IsActive = true;
                    db.Makes.Add(make);
                    db.SaveChanges();
                    vehicleVM.MakeID = make.ID;
                }
                if (!string.IsNullOrEmpty(vehicleVM.OtherModel))
                {
                    Model model = new Model();
                    model.Name = vehicleVM.OtherModel;
                    model.IsActive = true;
                    db.Models.Add(model);
                    db.SaveChanges();
                    vehicleVM.ModelID = model.ID;
                }

                Vehicle vehicle = new Vehicle();
                vehicle.ID = vehicleVM.ID;
                vehicle.Title = vehicleVM.Title;
                vehicle.Description = vehicleVM.Description;
                vehicle.VehicleCode = vehicleVM.VehicleCode;
                vehicle.VehicleTypeID = vehicleVM.VehicleTypeID;
                vehicle.CategoryID = vehicleVM.CategoryID;
                vehicle.BrandID = vehicleVM.BrandID;
                vehicle.ModelID = vehicleVM.ModelID;
                vehicle.MakeID = vehicleVM.MakeID;
                vehicle.Seats = vehicleVM.Seats;
                vehicle.AdultSleeps = vehicleVM.AdultSleeps;
                vehicle.KidSleeps = vehicleVM.KidSleeps;
                vehicle.YearBuilt = vehicleVM.YearBuilt;
                vehicle.Length = Convert.ToString(vehicleVM.Length);
                vehicle.Width = Convert.ToString(vehicleVM.Width);
                vehicle.Longitude = vehicleVM.Longitude;
                vehicle.Latitude = vehicleVM.Latitude;
                vehicle.IsFeatured = vehicleVM.IsFeatured;
                vehicle.IsSaleable = vehicleVM.IsSaleable;
                vehicle.SalePrice = vehicleVM.SalePrice;
                vehicle.DailyRate = vehicleVM.DailyRate;
                vehicle.SecurityDeposit = vehicleVM.SecurityDeposit;
                vehicle.CleaningFee = vehicleVM.CleaningFee;
                vehicle.WinterDiscount = vehicleVM.WinterDiscount;

                vehicle.Transmission = vehicleVM.Transmission;
                vehicle.DriveMode = vehicleVM.DriveMode;
                vehicle.FuelType = vehicleVM.FuelType;
                vehicle.Amps = vehicleVM.Amps;
                vehicle.Wheelbase = vehicleVM.Wheelbase;
                vehicle.GCWR = vehicleVM.GCWR;
                vehicle.FuelCapacity = vehicleVM.FuelCapacity;
                vehicle.HitchWeight = vehicleVM.HitchWeight;
                vehicle.BaseWeight = vehicleVM.BaseWeight;
                vehicle.GVWR = vehicleVM.GVWR;
                string ExteriorlengthFt = Convert.ToString(vehicleVM.ExteriorlengthFt);
                string ExteriorlengthInch = Convert.ToString(vehicleVM.ExteriorlengthInch);
                string ExteriorHeightFt = Convert.ToString(vehicleVM.ExteriorHeightFt);
                string ExteriorHeightInch = Convert.ToString(vehicleVM.ExteriorHeightInch);
                String Exteriorlength = "";
                if (!string.IsNullOrEmpty(ExteriorlengthFt))
                {
                    Exteriorlength = ExteriorlengthFt + " ft. ";
                }
                if (!string.IsNullOrEmpty(ExteriorlengthInch))
                {
                    Exteriorlength = ExteriorlengthFt + " ft." + ExteriorlengthInch + " inch.";
                }
                String ExteriorHeight = "";
                if (!string.IsNullOrEmpty(ExteriorHeightFt))
                {
                    ExteriorHeight = ExteriorHeightFt + " ft. ";
                }
                if (!string.IsNullOrEmpty(ExteriorHeightInch))
                {
                    ExteriorHeight = ExteriorHeightFt + " ft. " + ExteriorHeightInch + " inch.";
                }
                vehicle.ExteriorHeight = Exteriorlength;
                vehicle.Exteriorlength = ExteriorHeight;
                vehicle.FreshWater = vehicleVM.FreshWater;
                vehicle.GreyWater = vehicleVM.GreyWater;
                vehicle.BlackWater = vehicleVM.BlackWater;
                string AwingSizeFt = Convert.ToString(vehicleVM.AwingSizeFt);
                string AwingSizeInch = Convert.ToString(vehicleVM.AwingSizeInch);
                String AwingSize = "";
                if (!string.IsNullOrEmpty(AwingSizeFt))
                {
                    AwingSize = AwingSizeFt + " ft. ";
                }
                if (!string.IsNullOrEmpty(AwingSizeInch))
                {
                    AwingSize += AwingSizeInch + " inch. ";
                }
                vehicle.AwingSize = AwingSize;

                vehicle.Bed = vehicleVM.Bed;
                vehicle.Queen = vehicleVM.Queen;
                vehicle.Full = vehicleVM.Full;
                vehicle.Twin = vehicleVM.Twin;

                vehicle.CreatedOn = DateTime.Now;
                vehicle.UpdatedOn = DateTime.Now;
                vehicle.IsActive = true;
                db.Vehicles.Add(vehicle);
                db.SaveChanges();

                List<string> Tagslist = JsonConvert.DeserializeObject<List<string>>(Tags);
                VehicleTag vehicleTag = new VehicleTag();
                if (Tagslist != null)
                {
                    for (int i = 0; i < Tagslist.Count; i++)
                    {
                        vehicleTag.TagID = Convert.ToInt32(Tagslist[i]);
                        vehicleTag.VehicleID = vehicle.ID;
                        vehicleTag.IsActive = true;
                        db.VehicleTags.Add(vehicleTag);
                        db.SaveChanges();
                    }
                }
                List<string> Featurelist = JsonConvert.DeserializeObject<List<string>>(features);
                VehicleFeature vehiclefeature = new VehicleFeature();
                if (Featurelist != null)
                {
                    for (int i = 0; i < Featurelist.Count; i++)
                    {
                        int featureId = Convert.ToInt32(Featurelist[i]);
                        string qty = Request.Form["qty_" + featureId];
                        vehiclefeature.FeatureID = featureId;
                        vehiclefeature.VehicleID = vehicle.ID;
                        vehiclefeature.IsActive = true;
                        if (!string.IsNullOrEmpty(qty))
                            vehiclefeature.Description = qty;
                        db.VehicleFeatures.Add(vehiclefeature);
                        db.SaveChanges();
                    }
                }
                if (!string.IsNullOrEmpty(vehicleVM.VideoUrl1))
                {
                    VehicleImage vehicleImage = new VehicleImage();
                    vehicleImage.ImageUrl = GetYouTubeImage(vehicleVM.VideoUrl1);
                    vehicleImage.IsActive = true;
                    vehicleImage.VideoUrl = vehicleVM.VideoUrl1;
                    vehicleImage.VehicleID = vehicle.ID;
                    db.VehicleImages.Add(vehicleImage);
                    db.SaveChanges();
                }
                if (!string.IsNullOrEmpty(vehicleVM.VideoUrl2))
                {
                    VehicleImage vehicleImage = new VehicleImage();
                    vehicleImage.ImageUrl = GetYouTubeImage(vehicleVM.VideoUrl2);
                    vehicleImage.IsActive = true;
                    vehicleImage.VideoUrl = vehicleVM.VideoUrl2;
                    vehicleImage.VehicleID = vehicle.ID;
                    db.VehicleImages.Add(vehicleImage);
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }

            ViewBag.Amenties = db.AmentiesMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.FeatureMaster = db.FeaturesMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", vehicleVM.BrandID);
            ViewBag.CategoryID = new SelectList(db.Categories, "ID", "Name", vehicleVM.CategoryID);
            ViewBag.MakeID = new SelectList(db.Makes, "ID", "Name", vehicleVM.MakeID);
            ViewBag.ModelID = new SelectList(db.Models, "ID", "Name", vehicleVM.ModelID);
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", vehicleVM.VehicleTypeID);
            return View(vehicleVM);
        }

        public string GetYouTubeImage(string YoutubeUrl)
        {
            string youTubeThumb = string.Empty;
            if (YoutubeUrl == "")
                return "";

            if (YoutubeUrl.IndexOf("=") > 0)
            {
                youTubeThumb = YoutubeUrl.Split('=')[1];
            }
            else if (YoutubeUrl.IndexOf("/v/") > 0)
            {
                string strVideoCode = YoutubeUrl.Substring(YoutubeUrl.IndexOf("/v/") + 3);
                int ind = strVideoCode.IndexOf("?");
                youTubeThumb = strVideoCode.Substring(0, ind == -1 ? strVideoCode.Length : ind);
            }
            else if (YoutubeUrl.IndexOf('/') < 6)
            {
                youTubeThumb = YoutubeUrl.Split('/')[3];
            }
            else if (YoutubeUrl.IndexOf('/') > 6)
            {
                youTubeThumb = YoutubeUrl.Split('/')[1];
            }

            return "http://img.youtube.com/vi/" + youTubeThumb + "/mqdefault.jpg";
        }

        //public string GetYouTubeImage(string videoUrl)
        //{
        //    int mInd = videoUrl.IndexOf("/v/");
        //    if (mInd != -1)
        //    {
        //        string strVideoCode = videoUrl.Substring(videoUrl.IndexOf("/v/") + 3);
        //        int ind = strVideoCode.IndexOf("?");
        //        strVideoCode = strVideoCode.Substring(0, ind == -1 ? strVideoCode.Length : ind);
        //        return "https://img.youtube.com/vi/" + strVideoCode + "/default.jpg";
        //    }
        //    else
        //        return "";
        //}

        // GET: Vehicles/Edit/5
        public ActionResult Edit(int? id)
        {
            ViewBag.Tags = db.TagMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.Vehicletags = db.VehicleTags.Where(x => x.VehicleID == id).ToList();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vehicle vehicle = db.Vehicles.Find(id);
            if (vehicle == null)
            {
                return HttpNotFound();
            }
            VehicleVM vehicleVM = new VehicleVM();
            vehicleVM.ID = vehicle.ID;
            vehicleVM.Title = vehicle.Title;
            vehicleVM.Description = vehicle.Description;
            vehicleVM.VehicleCode = vehicle.VehicleCode;
            vehicleVM.VehicleTypeID = vehicle.VehicleTypeID;
            vehicleVM.CategoryID = vehicle.CategoryID;
            vehicleVM.BrandID = vehicle.BrandID;
            vehicleVM.MakeID = vehicle.MakeID;
            vehicleVM.ModelID = vehicle.ModelID;
            vehicleVM.Seats = vehicle.Seats;
            vehicleVM.AdultSleeps = vehicle.AdultSleeps;
            vehicleVM.KidSleeps = vehicle.KidSleeps;
            vehicleVM.YearBuilt = vehicle.YearBuilt;
            vehicleVM.Length = Convert.ToSingle(vehicle.Length);
            vehicleVM.Width = Convert.ToSingle(vehicle.Width);
            vehicleVM.Longitude = vehicle.Longitude;
            vehicleVM.Latitude = vehicle.Latitude;
            vehicleVM.IsFeatured = vehicle.IsFeatured;
            vehicleVM.IsSaleable = vehicle.IsSaleable;
            vehicleVM.SalePrice = vehicle.SalePrice;
            vehicleVM.DailyRate = vehicle.DailyRate;
            vehicleVM.SecurityDeposit = vehicle.SecurityDeposit;
            vehicleVM.CleaningFee = vehicle.CleaningFee;
            vehicleVM.WinterDiscount = vehicle.WinterDiscount;
            vehicleVM.Transmission = vehicle.Transmission;
            vehicleVM.DriveMode = vehicle.DriveMode;
            vehicleVM.FuelType = vehicle.FuelType;
            vehicleVM.Amps = vehicle.Amps;
            vehicleVM.Wheelbase = vehicle.Wheelbase;
            vehicleVM.GCWR = Convert.ToInt32(vehicle.GCWR);
            vehicleVM.FuelCapacity = vehicle.FuelCapacity;
            vehicleVM.HitchWeight = vehicle.HitchWeight;
            vehicleVM.BaseWeight = vehicle.BaseWeight;
            vehicleVM.GVWR = vehicle.GVWR;
            string Exteriorlength = vehicle.Exteriorlength;
            if (!string.IsNullOrEmpty(Exteriorlength))
            {
                Exteriorlength = Exteriorlength.Replace("ft.", ",") + ",";
                vehicleVM.ExteriorlengthFt = Convert.ToInt32(Exteriorlength.Split(',')[0].Trim());
                if (!string.IsNullOrEmpty(Exteriorlength.Replace("inch.", "").Split(',')[1].Trim()))
                    vehicleVM.ExteriorlengthInch = Convert.ToInt32(Exteriorlength.Replace("inch.", "").Split(',')[1].Trim());
            }
            string ExteriorHeight = vehicle.ExteriorHeight;
            if (!string.IsNullOrEmpty(ExteriorHeight))
            {
                ExteriorHeight = ExteriorHeight.Replace("ft.", ",") + ",";
                vehicleVM.ExteriorHeightFt = Convert.ToInt32(ExteriorHeight.Split(',')[0].Trim());
                if (!string.IsNullOrEmpty(ExteriorHeight.Replace("inch.", "").Split(',')[1].Trim()))
                    vehicleVM.ExteriorHeightInch = Convert.ToInt32(ExteriorHeight.Replace("inch.", "").Split(',')[1].Trim());
            }

            vehicleVM.FreshWater = vehicle.FreshWater;
            vehicleVM.GreyWater = vehicle.GreyWater;
            vehicleVM.BlackWater = vehicle.BlackWater;
            string AwingSize = vehicle.AwingSize;
            if (!string.IsNullOrEmpty(AwingSize))
            {
                AwingSize = AwingSize.Replace("ft.", ",") + ",";
                vehicleVM.AwingSizeFt = Convert.ToInt32(AwingSize.Split(',')[0].Trim());
                if (!string.IsNullOrEmpty(AwingSize.Replace("inch.", "").Split(',')[1].Trim()))
                    vehicleVM.AwingSizeInch = Convert.ToInt32(AwingSize.Replace("inch.", "").Split(',')[1].Trim());
            }
            vehicleVM.Bed = vehicle.Bed;
            vehicleVM.Queen = vehicle.Queen;
            vehicleVM.Full = vehicle.Full;
            vehicleVM.Twin = vehicle.Twin;
            vehicleVM.CreatedOn = DateTime.Now;
            vehicleVM.UpdatedOn = DateTime.Now;
            vehicleVM.IsActive = true;
            List<VehicleImage> vehicleVideo = db.VehicleImages.Where(x => x.VehicleID == vehicle.ID && x.VideoUrl != null && x.PublicKey == null).ToList();
            if (vehicleVideo != null && vehicleVideo.Count() > 0)
            {
                vehicleVM.VideoUrl1 = vehicleVideo.FirstOrDefault().VideoUrl;
                if (vehicleVideo.Count() > 1)
                {
                    vehicleVM.VideoUrl2 = vehicleVideo[1].VideoUrl;
                }
            }
            ViewBag.Amenties = db.AmentiesMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.FeatureMaster = db.FeaturesMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.VehicleFeatures = db.VehicleFeatures.Where(x => x.VehicleID == id).ToList();
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", vehicle.BrandID);
            ViewBag.CategoryID = new SelectList(db.Categories, "ID", "Name", vehicle.CategoryID);
            ViewBag.ModelID = new SelectList(db.Models, "ID", "Name", vehicle.ModelID);
            ViewBag.MakeID = new SelectList(db.Makes, "ID", "Name", vehicle.MakeID);
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", vehicle.VehicleTypeID);
            return View(vehicleVM);
        }

        // POST: Vehicles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(VehicleVM vehicleVM, string Tags, string features)
        {
            ViewBag.Tags = db.TagMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.Vehicletags = db.VehicleTags.Where(x => x.VehicleID == vehicleVM.ID).ToList();
            if (ModelState.IsValid)
            {
                if (!string.IsNullOrEmpty(vehicleVM.OtherCategory))
                {
                    Category category = new Category();
                    category.Name = vehicleVM.OtherCategory;
                    category.IsActive = true;
                    category.VehicleTypeID = vehicleVM.VehicleTypeID;
                    db.Categories.Add(category);
                    db.SaveChanges();
                    vehicleVM.CategoryID = category.ID;
                }
                if (!string.IsNullOrEmpty(vehicleVM.OtherBrand))
                {
                    Brand brand = new Brand();
                    brand.Name = vehicleVM.OtherBrand;
                    brand.IsActive = true;
                    db.Brands.Add(brand);
                    db.SaveChanges();
                    vehicleVM.BrandID = brand.ID;
                }
                if (!string.IsNullOrEmpty(vehicleVM.OtherMake))
                {
                    Make make = new Make();
                    make.Name = vehicleVM.OtherMake;
                    make.IsActive = true;
                    db.Makes.Add(make);
                    db.SaveChanges();
                    vehicleVM.MakeID = make.ID;
                }
                if (!string.IsNullOrEmpty(vehicleVM.OtherModel))
                {
                    Model model = new Model();
                    model.Name = vehicleVM.OtherModel;
                    model.IsActive = true;
                    db.Models.Add(model);
                    db.SaveChanges();
                    vehicleVM.ModelID = model.ID;
                }
                Vehicle vehicle = new Vehicle();
                vehicle.ID = vehicleVM.ID;
                vehicle.Title = vehicleVM.Title;
                vehicle.Description = vehicleVM.Description;
                vehicle.VehicleCode = vehicleVM.VehicleCode;
                vehicle.VehicleTypeID = vehicleVM.VehicleTypeID;
                vehicle.CategoryID = vehicleVM.CategoryID;
                vehicle.BrandID = vehicleVM.BrandID;
                vehicle.ModelID = vehicleVM.ModelID;
                vehicle.MakeID = vehicleVM.MakeID;
                vehicle.Seats = vehicleVM.Seats;
                vehicle.AdultSleeps = vehicleVM.AdultSleeps;
                vehicle.KidSleeps = vehicleVM.KidSleeps;
                vehicle.YearBuilt = vehicleVM.YearBuilt;
                vehicle.Length = Convert.ToString(vehicleVM.Length);
                vehicle.Width = Convert.ToString(vehicleVM.Width);
                vehicle.Longitude = vehicleVM.Longitude;
                vehicle.Latitude = vehicleVM.Latitude;
                vehicle.IsFeatured = vehicleVM.IsFeatured;
                vehicle.IsSaleable = vehicleVM.IsSaleable;
                vehicle.SalePrice = vehicleVM.SalePrice;
                vehicle.DailyRate = vehicleVM.DailyRate;
                vehicle.SecurityDeposit = vehicleVM.SecurityDeposit;
                vehicle.CleaningFee = vehicleVM.CleaningFee;
                vehicle.WinterDiscount = vehicleVM.WinterDiscount;

                vehicle.Transmission = vehicleVM.Transmission;
                vehicle.DriveMode = vehicleVM.DriveMode;
                vehicle.FuelType = vehicleVM.FuelType;
                vehicle.Amps = vehicleVM.Amps;
                vehicle.Wheelbase = vehicleVM.Wheelbase;
                vehicle.GCWR = vehicleVM.GCWR;
                vehicle.FuelCapacity = vehicleVM.FuelCapacity;
                vehicle.HitchWeight = vehicleVM.HitchWeight;
                vehicle.BaseWeight = vehicleVM.BaseWeight;
                vehicle.GVWR = vehicleVM.GVWR;
                string ExteriorlengthFt = Convert.ToString(vehicleVM.ExteriorlengthFt);
                string ExteriorlengthInch = Convert.ToString(vehicleVM.ExteriorlengthInch);
                string ExteriorHeightFt = Convert.ToString(vehicleVM.ExteriorHeightFt);
                string ExteriorHeightInch = Convert.ToString(vehicleVM.ExteriorHeightInch);
                String Exteriorlength = "";
                if (!string.IsNullOrEmpty(ExteriorlengthFt))
                {
                    Exteriorlength = ExteriorlengthFt + " ft. ";
                }
                if (!string.IsNullOrEmpty(ExteriorlengthInch))
                {
                    Exteriorlength = ExteriorlengthFt + " ft." + ExteriorlengthInch + " inch.";
                }
                String ExteriorHeight = "";
                if (!string.IsNullOrEmpty(ExteriorHeightFt))
                {
                    ExteriorHeight = ExteriorHeightFt + " ft. ";
                }
                if (!string.IsNullOrEmpty(ExteriorHeightInch))
                {
                    ExteriorHeight = ExteriorHeightFt + " ft. " + ExteriorHeightInch + " inch.";
                }
                vehicle.ExteriorHeight = ExteriorHeight;
                vehicle.Exteriorlength = Exteriorlength;
                vehicle.FreshWater = vehicleVM.FreshWater;
                vehicle.GreyWater = vehicleVM.GreyWater;
                vehicle.BlackWater = vehicleVM.BlackWater;
                string AwingSizeFt = Convert.ToString(vehicleVM.AwingSizeFt);
                string AwingSizeInch = Convert.ToString(vehicleVM.AwingSizeInch);
                String AwingSize = "";
                if (!string.IsNullOrEmpty(AwingSizeFt))
                {
                    AwingSize = AwingSizeFt + " ft. ";
                }
                if (!string.IsNullOrEmpty(AwingSizeInch))
                {
                    AwingSize += AwingSizeInch + " inch. ";
                }
                vehicle.AwingSize = AwingSize;

                vehicle.Bed = vehicleVM.Bed;
                vehicle.Queen = vehicleVM.Queen;
                vehicle.Full = vehicleVM.Full;
                vehicle.Twin = vehicleVM.Twin;

                vehicle.CreatedOn = DateTime.Now;
                vehicle.UpdatedOn = DateTime.Now;
                vehicle.IsActive = true;

                db.Entry(vehicle).State = EntityState.Modified;
                db.SaveChanges();
                List<string> Tagslist = JsonConvert.DeserializeObject<List<string>>(Tags);
                VehicleTag vehicleTag = new VehicleTag();
                if (Tagslist != null)
                {
                    var ExistingTags = db.VehicleTags.Where(x => x.VehicleID == vehicle.ID).ToList();
                    if (ExistingTags != null)
                    {
                        db.VehicleTags.RemoveRange(ExistingTags);
                        db.SaveChanges();
                    }
                    for (int i = 0; i < Tagslist.Count; i++)
                    {
                        int tagid = Convert.ToInt32(Tagslist[i]);
                        vehicleTag.TagID = tagid;
                        vehicleTag.VehicleID = vehicle.ID;
                        vehicleTag.IsActive = true;
                        db.VehicleTags.Add(vehicleTag);
                        db.SaveChanges();

                    }
                }

                List<string> Featurelist = JsonConvert.DeserializeObject<List<string>>(features);
                VehicleFeature vehiclefeature = new VehicleFeature();
                if (Featurelist != null)
                {
                    var ExistingFeatures = db.VehicleFeatures.Where(x => x.VehicleID == vehicle.ID).ToList();
                    if (ExistingFeatures != null)
                    {
                        db.VehicleFeatures.RemoveRange(ExistingFeatures);
                        db.SaveChanges();
                    }
                    for (int i = 0; i < Featurelist.Count; i++)
                    {
                        int featureId = Convert.ToInt32(Featurelist[i]);
                        string qty = Request.Form["qty_" + featureId];
                        //var ExistingFeatures = db.VehicleFeatures.Where(x => x.VehicleID == vehicle.ID && x.FeatureID == featureId).Any();
                        //if (!ExistingFeatures)
                        //{
                        vehiclefeature.FeatureID = featureId;
                        vehiclefeature.VehicleID = vehicle.ID;
                        vehiclefeature.IsActive = true;
                        if (!string.IsNullOrEmpty(qty))
                            vehiclefeature.Description = qty;
                        db.VehicleFeatures.Add(vehiclefeature);
                        db.SaveChanges();
                        //}
                    }
                }
                if (!string.IsNullOrEmpty(vehicleVM.VideoUrl1))
                {
                    VehicleImage vehicleImage = new VehicleImage();
                    vehicleImage.ImageUrl = GetYouTubeImage(vehicleVM.VideoUrl1);
                    vehicleImage.IsActive = true;
                    vehicleImage.VideoUrl = vehicleVM.VideoUrl1;
                    vehicleImage.VehicleID = vehicle.ID;
                    db.VehicleImages.Add(vehicleImage);
                    db.SaveChanges();
                }
                if (!string.IsNullOrEmpty(vehicleVM.VideoUrl2))
                {
                    VehicleImage vehicleImage = new VehicleImage();
                    vehicleImage.ImageUrl = GetYouTubeImage(vehicleVM.VideoUrl2);
                    vehicleImage.IsActive = true;
                    vehicleImage.VideoUrl = vehicleVM.VideoUrl2;
                    vehicleImage.VehicleID = vehicle.ID;
                    db.VehicleImages.Add(vehicleImage);
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }

            ViewBag.Amenties = db.AmentiesMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.FeatureMaster = db.FeaturesMasters.Where(x => x.IsActive == true).ToList();
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", vehicleVM.BrandID);
            ViewBag.CategoryID = new SelectList(db.Categories, "ID", "Name", vehicleVM.CategoryID);
            ViewBag.ModelID = new SelectList(db.Models, "ID", "Name", vehicleVM.ModelID);
            ViewBag.VehicleTypeID = new SelectList(db.VehicleTypes, "ID", "Name", vehicleVM.VehicleTypeID);
            ViewBag.MakeID = new SelectList(db.Makes, "ID", "Name", vehicleVM.MakeID);
            return View(vehicleVM);
        }

        // GET: Vehicles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vehicle vehicle = db.Vehicles.Find(id);
            if (vehicle == null)
            {
                return HttpNotFound();
            }
            return View(vehicle);
        }

        // POST: Vehicles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Vehicle vehicle = db.Vehicles.Find(id);
            vehicle.IsActive = false;
            db.Entry(vehicle).State = EntityState.Modified;
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
