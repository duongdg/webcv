using Model;
using Model.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebCV.Areas.Admin.Controllers
{
    public class LanguageController : Controller
    {
        // GET: Admin/Language
        public ActionResult Index()
        {
            var iplLang = new LanguageModel();
            var model = iplLang.ListAll();
            return View(model);
        }

        // GET: Admin/Language/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Language/Create
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Language/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Language collection)
        {
            try
            {
                // TODO: Add insert logic here
                if (ModelState.IsValid)
                {


                    var model = new LanguageModel();
                    int res = model.Create(collection.LanguageName, collection.Status);
                    if (res > 0)
                        return RedirectToAction("Index");
                    else
                    {
                        ModelState.AddModelError("", "Thêm mới không thành công.");
                    }
                }
                return View(collection);

            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Language/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Language/Edit/5
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

        // GET: Admin/Language/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Language/Delete/5
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
