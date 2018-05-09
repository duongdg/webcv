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
            var model = new ProfileDAO().ListByGroupId(16);
            return PartialView(model);
        }
        [ChildActionOnly]
        public ActionResult About()
        {
            var model = new ProfileDAO().ListByGroupId(16);
            return PartialView(model);
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
        [ChildActionOnly]
        public ActionResult Project()
        {
            var model = new ViewProfileDAO().ListByGroupId(16);
            return PartialView(model);
        }
        [ChildActionOnly]
        public ActionResult Experience()
        {
            var model = new ViewProfileDAO().ListByGroupId(16);
            return PartialView(model);
        }
        [ChildActionOnly]
        public ActionResult Contact()
        {
            var model = new ProfileDAO().ListByGroupId(16);
            return PartialView(model);
        }
    }
}