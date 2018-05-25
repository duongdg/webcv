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
    public class UsersController : Controller
    {
        WebCVEntities db = new WebCVEntities();

        // GET: Admin/Users
        public ActionResult Index()
        {
            var users = db.Users.Include(u => u.Role);
            return View(users.ToList());
        }

        // GET: Admin/Users/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            User user = db.Users.Find(id);
            if (user == null)
            {
                return HttpNotFound();
            }
            return View(user);
        }

        // GET: Admin/Users/Create
        //public ActionResult Create()
        //{
        //    ViewBag.Id_Profile = new SelectList(db.Profiles, "Id_Profile", "FullName");
        //    ViewBag.Id_Role = new SelectList(db.Roles, "Id_Role", "RoleName");
        //    return View();
        //}

        //// POST: Admin/Users/Create
        //// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        //// more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Create([Bind(Include = "Id_User,Id_Profile,Id_Role,PassWord,Email,Status")] User user)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Users.Add(user);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    //ViewBag.Id_Profile = new SelectList(db.Profiles, "Id_Profile", "FullName", user.Id_Profile);
        //    ViewBag.Id_Role = new SelectList(db.Roles, "Id_Role", "RoleName", user.Id_Role);
        //    return View(user);
        //}

        // GET: Admin/Users/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            User user = db.Users.Find(id);
            if (user == null)
            {
                return HttpNotFound();
            }
            //ViewBag.Id_Profile = new SelectList(db.Profiles, "Id_Profile", "FullName", user.Id_Profile);
            ViewBag.Id_Role = new SelectList(db.Roles, "Id_Role", "RoleName", user.Id_Role);
            return View(user);
        }
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit([Bind(Include = "Id_Role,Status")] User user)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Entry(user).State = EntityState.Modified;
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    //ViewBag.Id_Profile = new SelectList(db.Profiles, "Id_Profile", "FullName", user.Id_Profile);
        //    ViewBag.Id_Role = new SelectList(db.Roles, "Id_Role", "RoleName", user.Id_Role);
        //    return View(user);
        //}
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(User collection)
        {
            try
            {
                // TODO: Add insert logic here
                if (ModelState.IsValid)
                {


                    var model = new UserModel();
                    var res = model.Update(collection);
                    if (res)
                        return RedirectToAction("Index");
                    else
                    {
                        ModelState.AddModelError("", "Update mới không thành công.");
                    }
                }
                return View(collection);

            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/Users/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            User user = db.Users.Find(id);
            if (user == null)
            {
                return HttpNotFound();
            }
            return View(user);
        }

        // POST: Admin/Experiences/Delete/5
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new UserModel().Delete(id);
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
