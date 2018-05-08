using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.Framework;

namespace WebCV.Areas.Admin.Controllers
{
    public class ProfilesController : Controller
    {
        private dataCV db = new dataCV();

        // GET: Admin/Profiles
        public ActionResult Index()
        {
            var profiles = db.Profiles.Include(p => p.Education).Include(p => p.Follow).Include(p => p.Specialized);
            return View(profiles.ToList());
        }

        // GET: Admin/Profiles/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Profile profile = db.Profiles.Find(id);
            if (profile == null)
            {
                return HttpNotFound();
            }
            return View(profile);
        }

        // GET: Admin/Profiles/Create
        public ActionResult Create()
        {
            ViewBag.Id_Education = new SelectList(db.Educations, "Id_Education", "EducationName");
            ViewBag.Id_Experience = new SelectList(db.Experiences, "Id_Experience", "ExperienceName");
            ViewBag.Id_Follow = new SelectList(db.Follows, "Id_Follow", "Id_Follow");
            ViewBag.Id_Language = new SelectList(db.Languages, "Id_Language", "LanguageName");
            ViewBag.Id_Project = new SelectList(db.Projects, "Id_Project", "ProjectName");
            ViewBag.Id_Skill = new SelectList(db.Skills, "Id_Skill", "SkillName");
            ViewBag.Id_Specialized = new SelectList(db.Specializeds, "id_Specialized", "SpecializedName");
            return View();
        }

        // POST: Admin/Profiles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id_Profile,FullName,Phone,Adress,DateofBirth,Sex,Hobbies,Descreption,TargetJob,Status,Id_Project,Id_Follow,Id_Language,Id_Skill,Id_Experience,Id_Education,Id_Specialized,Is_View")] Profile profile)
        {
            if (ModelState.IsValid)
            {
                db.Profiles.Add(profile);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Id_Education = new SelectList(db.Educations, "Id_Education", "EducationName", profile.Id_Education);
            ViewBag.Id_Follow = new SelectList(db.Follows, "Id_Follow", "Id_Follow", profile.Id_Follow);
            ViewBag.Id_Specialized = new SelectList(db.Specializeds, "id_Specialized", "SpecializedName", profile.Id_Specialized);
            return View(profile);
        }

        // GET: Admin/Profiles/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Profile profile = db.Profiles.Find(id);
            if (profile == null)
            {
                return HttpNotFound();
            }
            ViewBag.Id_Education = new SelectList(db.Educations, "Id_Education", "EducationName", profile.Id_Education);
            ViewBag.Id_Follow = new SelectList(db.Follows, "Id_Follow", "Id_Follow", profile.Id_Follow);
            ViewBag.Id_Specialized = new SelectList(db.Specializeds, "id_Specialized", "SpecializedName", profile.Id_Specialized);
            return View(profile);
        }

        // POST: Admin/Profiles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id_Profile,FullName,Phone,Adress,DateofBirth,Sex,Hobbies,Descreption,TargetJob,Status,Id_Project,Id_Follow,Id_Language,Id_Skill,Id_Experience,Id_Education,Id_Specialized,Is_View")] Profile profile)
        {
            if (ModelState.IsValid)
            {
                db.Entry(profile).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Id_Education = new SelectList(db.Educations, "Id_Education", "EducationName", profile.Id_Education);
            ViewBag.Id_Follow = new SelectList(db.Follows, "Id_Follow", "Id_Follow", profile.Id_Follow);
            ViewBag.Id_Specialized = new SelectList(db.Specializeds, "id_Specialized", "SpecializedName", profile.Id_Specialized);
            return View(profile);
        }

        // GET: Admin/Profiles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Profile profile = db.Profiles.Find(id);
            if (profile == null)
            {
                return HttpNotFound();
            }
            return View(profile);
        }

        // POST: Admin/Profiles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Profile profile = db.Profiles.Find(id);
            db.Profiles.Remove(profile);
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
