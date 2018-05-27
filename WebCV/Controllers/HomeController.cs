using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCV.Common;
using WebCV.Models;
using PagedList;

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
            return PartialView();
        }
        public ActionResult TopCVLanguage()
        {
            var multillanguage = db.Top3_Profile_Multil_Language().ToList();
            return PartialView(multillanguage);
        }
        public ActionResult TopCVPExperience()
        {
            var multilexperience = db.Top3_Profile_Multil_Experience().ToList();
            return PartialView(multilexperience);
        }
        public ActionResult TopCVSkill()
        {
            var multilskill = db.Top3_Profile_Multil_Skill().ToList();
            return PartialView(multilskill);
        }
        public ActionResult Popular()
        {
            var objProfilePopular = db.Top6_Profile_Popular().ToList();
            return PartialView(objProfilePopular);
        }
        public PartialViewResult InvolvePartial(int? page)
        {
            List<Profile> profile_view = db.Profiles.Where(x => x.Status == true && x.Is_View == true).ToList();
            int pageNumber = (page ?? 1);
            int pageSize = 4;
            var session = (AdminLogin)Session[CommonConstant.ADMIN_SESION];
            if (session != null)
            {
                long id_followed = session.Id_Admin;
                string id_follower = Request.Form["id_profile"];
                if (id_follower != null)
                {
                    if (CheckFollow((int)id_followed, int.Parse(id_follower)))
                    {
                        ViewBag.Check = "1";
                        //var id = db.Follows.Select(x=>x.Id_Follow).Where(x=>x.Followed_id== (int)id_followed && x.Follower_id== int.Parse(id_follower));
                        //db.Follows.Remove(id);
                        //db.SaveChanges();
                    }
                    else
                    {
                        ViewBag.Check = "0";
                        Follow follow = new Follow();
                        follow.Followed_id = (int)id_followed;
                        follow.Follower_id = int.Parse(id_follower);
                        db.Follows.Add(follow);
                        db.SaveChanges();

                    }
                }
            } 
            return PartialView(profile_view.OrderBy(n => n.FullName).ToPagedList(pageNumber, pageSize));
        }
        public bool CheckFollow(int id_followed, int id_follower)
        {
            return db.Follows.Count(x => x.Followed_id == id_followed && x.Follower_id== id_follower) > 0;
        }
        public ActionResult About()
        {
            return View();
        }
        public ActionResult ResponProfile(int Id_Profile)
        {
            Profile profile_view = db.Profiles.SingleOrDefault(n => n.Id_Profile == Id_Profile && n.Status == true && n.Is_View == true);
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