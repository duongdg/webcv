﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebCV.Areas.Admin.Controllers
{
    public class ProjectController : Controller
    {
        Model.Framework.dataCV db = new Model.Framework.dataCV();
        // GET: Admin/Project
        public ActionResult Index()
        {
            var obj = db.Projects;
            return View(obj);
        }

        // GET: Admin/Project/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Project/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Project/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Project/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Project/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Project/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Project/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
