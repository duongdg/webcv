using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebCV.Areas.Admin.Code;
using WebCV.Models;

namespace WebCV.Areas.Admin.Controllers
{
    public class ProjectController : Controller
    {
        WebCVEntities db = new WebCVEntities();

        // GET: Admin/Projects
        public ActionResult Index()
        {
            return View(db.Projects.ToList());
        }

        // GET: Admin/Projects/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Project Project = db.Projects.Find(id);
            if (Project == null)
            {
                return HttpNotFound();
            }
            return View(Project);
        }

        // GET: Admin/Projects/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Projects/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id_Project,ProjectName,Pr_Descreption,Status")] Project Project)
        {
            if (ModelState.IsValid)
            {
                db.Projects.Add(Project);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(Project);
        }

        // GET: Admin/Projects/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Project Project = db.Projects.Find(id);
            if (Project == null)
            {
                return HttpNotFound();
            }
            return View(Project);
        }

        // POST: Admin/Projects/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id_Project,ProjectName,Pr_Descreption,Status")] Project Project)
        {
            if (ModelState.IsValid)
            {
                db.Entry(Project).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(Project);
        }

        // GET: Admin/Projects/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Project Project = db.Projects.Find(id);
            if (Project == null)
            {
                return HttpNotFound();
            }
            return View(Project);
        }

        // POST: Admin/Projects/Delete/5
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new ProjectModel().Delete(id);
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
