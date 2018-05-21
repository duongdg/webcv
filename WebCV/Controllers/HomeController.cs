using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCV.Common;
using WebCV.Models;

namespace WebCV.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        WebCVEntities db = new WebCVEntities();
        public ActionResult Home()
        {
            return View();
        }

        public ActionResult DetailProfile()
        {
            var objProfileHot = db.Count_Follow().ToList();
            return PartialView(objProfileHot);
        }
        public ActionResult ContentTop()
        {
            var multillanguage = db.Top3_Profile_Multil_Language().ToList();
            return PartialView(multillanguage);
        }
        public ActionResult Popular()
        {
            var objProfilePopular = db.Top6_Profile_Popular().ToList();
            return PartialView(objProfilePopular);
        }
        public PartialViewResult InvolvePartial()
        {
            var profile_view = db.Profiles.ToList();
            return PartialView(profile_view);
        }
        public ActionResult About()
        {
            return View();
        }
        public ActionResult ResponProfile(int Id_Profile)
        {
            Profile profile_view = db.Profiles.SingleOrDefault(n => n.Id_Profile == Id_Profile);
            return PartialView(profile_view);
        }
        
        public JsonResult ListName(string q)
        {
            var data = new ProfileDAO().ListName(q);
            return Json(new
            {
                data = data,
                status = true
            }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Search()
        {
            return View();
        }
        //public ActionResult Search(string txtSearch, int page=1, int pageSize=2)
        //{

        //}
    }
}