using BotDetect.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCV.Areas.Admin.Code;
using WebCV.Common;
using WebCV.Models;

namespace WebCV.Controllers
{
    public class UserController : Controller
    {
        WebCVEntities db = new WebCVEntities();
        // GET: User
        [HttpGet]
        public ActionResult Register()
        {
            ViewBag.Id_Role = new SelectList(db.Roles, "Id_Role", "RoleName");
            return View();
        }
        [HttpPost]
        [CaptchaValidation("CaptchaCode", "ExampleCaptcha", "Mã xác nhận không đúng.")]
        public ActionResult Register(User model)
        {
            if(ModelState.IsValid)
            {
                var dao = new UserModel();
                if(dao.CheckEmail(model.Email))
                {
                    ModelState.AddModelError("", "Email đã tồn tại");
                }
                else
                {
                    //var id_role = db.Roles.Where(x=>x.RoleName=="user");
                    var user = new User();
                    user.Email = model.Email;
                    user.PassWord = Encryptor.MD5Hash(model.PassWord);
                    user.Status = true;
                    user.Id_Role = 2;
                    var result=dao.Create(user);
                    if(result>0)
                    {
                        //ViewBag.Success = "Thanh cong";
                        //return RedirectToAction("Create", "Admin/Profiles");
                        Response.Redirect("http://localhost:61528/AddInformationProfile/Create");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Đăng ký thất bại");
                    }
                }
            }
            else
            {

            }
            return View(model);
        }
    }
}