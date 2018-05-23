using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebCV.Areas.Admin.Code;
using WebCV.Models;

namespace WebCV.Areas.Admin.Controllers
{
    public class SpecializedsController : Controller
    {
        WebCVEntities db = new WebCVEntities();

        // GET: Admin/Specializeds
        public ActionResult Index()
        {
            return View(db.Specializeds.ToList());
        }

        // GET: Admin/Specializeds/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Specialized specialized = db.Specializeds.Find(id);
            if (specialized == null)
            {
                return HttpNotFound();
            }
            return View(specialized);
        }

        // GET: Admin/Specializeds/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Specializeds/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_Specialized,SpecializedName,Status")] Specialized specialized)
        {
            if (ModelState.IsValid)
            {
                db.Specializeds.Add(specialized);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(specialized);
        }

        // GET: Admin/Specializeds/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Specialized specialized = db.Specializeds.Find(id);
            if (specialized == null)
            {
                return HttpNotFound();
            }
            return View(specialized);
        }

        // POST: Admin/Specializeds/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_Specialized,SpecializedName,Status")] Specialized specialized)
        {
            if (ModelState.IsValid)
            {
                db.Entry(specialized).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(specialized);
        }

        // GET: Admin/Specializeds/Delete/5
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new SpecializedModel().Delete(id);
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
