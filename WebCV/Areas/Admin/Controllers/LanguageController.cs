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
        WebCVEntities db = new WebCVEntities();
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
                    if (CheckName(collection.LanguageName))
                    {
                        SetAlert("Tên trùng, vui lòng nhập tên khác", "error");
                    }
                    else
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
                    if (CheckName(collection.LanguageName))
                    {
                        SetAlert("Tên trùng, vui lòng nhập tên khác", "error");
                    }
                    else
                    {
                        var model = new LanguageModel();
                        var res = model.Update(collection);
                        if (res)
                        {
                            SetAlert("Sửa thành công", "success");
                            return RedirectToAction("Index");
                        }
                        else
                        {
                            ModelState.AddModelError("", "Update mới không thành công.");
                        }
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
        public bool CheckName(string name)
        {
            return db.Languages.Count(x => x.LanguageName == name) > 0;
        }
    }
}
