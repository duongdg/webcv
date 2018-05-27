using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCV.Models;
using System.Configuration;
using Common;

namespace WebCV.Controllers
{
    public class ProfileController : Controller
    {
        WebCVEntities db = new WebCVEntities();
        // GET: Profile
        public ActionResult Profile(int Id_Profile)
        {
            return View();
        }
        [ChildActionOnly]
        public ActionResult Slide(int Id_Profile)
        {
           var sile = db.Profiles.Where(x=>x.Id_Profile== Id_Profile).ToList();
           return PartialView(sile);
        }
        [ChildActionOnly]
        public ActionResult About(int Id_Profile)
        {
            var about = db.Profiles.Where(x => x.Id_Profile == Id_Profile).ToList();
            return PartialView(about);
        }
        public ActionResult Service()
        {
            return View();
        }
        [ChildActionOnly]
        public ActionResult Skill(int Id_Profile)
        {
            var skill = db.View_Profile_Skill.Where(x => x.Id_Profile == Id_Profile).ToList();
            return PartialView(skill);
        }
        [ChildActionOnly]
        public ActionResult Project(int Id_Profile)
        {
            var model = db.View_Profile_Project.Where(x => x.Id_Profile == Id_Profile).ToList();
            return PartialView(model);
        }
        [ChildActionOnly]
        public ActionResult Experience(int Id_Profile)
        {
            var experience = db.View_Profile_Experience.Where(x => x.Id_Profile == Id_Profile).ToList();
            return PartialView(experience);
        }
        [ChildActionOnly]
        public ActionResult Contact(int Id_Profile)
        {
            var contact = db.Profiles.Where(x => x.Id_Profile == Id_Profile).ToList();
            return PartialView(contact);
        }
        public JsonResult Send(string name, string phgone, string email, string mesage)
        {
            string content;
            content = "Email";
            var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();
            new MailHelper().SendMail(toEmail, "TT lien he moi", content);
            return Json(new {

            });
        }
    }
}