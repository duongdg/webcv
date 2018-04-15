using Model.DAO;
using Model.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebCV.Controllers
{
    public class ProfileController : Controller
    {
        private dataCV db = new dataCV();
        // GET: Profile
        public ActionResult Profile()
        {
            return View();
        }
        [ChildActionOnly]
        public ActionResult Slide()
        {
            var model = new ProfileDAO().ListByGroupId(14);
            return PartialView(model);
        }
        public ActionResult About()
        {
            return View();
        }
        public ActionResult Service()
        {
            return View();
        }
        [ChildActionOnly]
        public ActionResult Skill()
        {
            var model = new SkillDAO().ListAll();
            return PartialView(model);
        }
        public ActionResult Project()
        {
            return View();
        }
        public ActionResult Experience()
        {
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
    }
}