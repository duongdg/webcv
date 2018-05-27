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
    public class EducationController : BaseController
    {
        WebCVEntities db = new WebCVEntities();

        // GET: Admin/Educations
        public ActionResult Index()
        {
            return View(db.Educations.ToList());
        }

        // GET: Admin/Educations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Education Education = db.Educations.Find(id);
            if (Education == null)
            {
                return HttpNotFound();
            }
            return View(Education);
        }

        // GET: Admin/Educations/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Educations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id_Education,EducationName,Status")] Education Education)
        {
            if (ModelState.IsValid)
            {
                db.Educations.Add(Education);
                db.SaveChanges();
                SetAlert("Thêm mới thành công", "success");
                return RedirectToAction("Index");
            }
            else
            {
                ModelState.AddModelError("", "Thêm mới không thành công.");
            }

            return View(Education);
        }

        // GET: Admin/Educations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Education Education = db.Educations.Find(id);
            if (Education == null)
            {
                return HttpNotFound();
            }
            return View(Education);
        }

        // POST: Admin/Educations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id_Education,EducationName,Status")] Education Education)
        {
            if (ModelState.IsValid)
            {
                db.Entry(Education).State = EntityState.Modified;
                db.SaveChanges();
                SetAlert("Sửa thành công", "success");
                return RedirectToAction("Index");
            }
            else
            {
                ModelState.AddModelError("", "Sửa thất bại.");
            }
            return View(Education);
        }

        // GET: Admin/Educations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Education Education = db.Educations.Find(id);
            if (Education == null)
            {
                return HttpNotFound();
            }
            return View(Education);
        }

        // POST: Admin/Educations/Delete/5
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new EducationModel().Delete(id);
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
