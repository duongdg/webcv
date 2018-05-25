using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCV.Areas.Admin.Code;
using WebCV.Models;

namespace WebCV.Areas.Admin.Controllers
{
    public class LanguageController : BaseController
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
                    {
                        SetAlert("Thêm mới thành công", "success");
                        return RedirectToAction("Index");
                    }
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
        public ActionResult Edit(int id)
        {
                var language = new LanguageModel().ViewDetails(id);
                return View(language);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Language collection)
        {
            try
            {
                // TODO: Add insert logic here
                if (ModelState.IsValid)
                {


                    var model = new LanguageModel();
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
        // POST: Admin/Language/Delete/5
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new LanguageModel().Delete(id);
            return RedirectToAction("Index");
        }
    }
}
