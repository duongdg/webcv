using Model;
using Model.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WebCV.Areas.Admin.Code;
using WebCV.Areas.Admin.Models;
using WebCV.Common;

namespace WebCV.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var dao = new AdminDAO();
                var result = dao.Login(model.Email, Encryptor.MD5Hash(model.PassWord));
                if (result == 1)
                {
                    var admin = dao.GetByID(model.Email);
                    var adminSession = new AdminLogin();
                    adminSession.Email = admin.Email;
                    adminSession.Id_Admin = admin.Id_User;
                    Session.Add(CommonConstant.ADMIN_SESION, adminSession);
                    return RedirectToAction("Index", "Home");
                }
                else if (result == 0)
                {
                    ModelState.AddModelError("", "Tài khoản không tồn tại.");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Tài khoản đang bị khóa.");
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Mật khẩu không đúng.");
                }
                else
                {
                    ModelState.AddModelError("", "Đăng nhập không đúng.");
                }
            }
            return View("Index");
        }
    }
}