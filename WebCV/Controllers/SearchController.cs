using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCV.Models;

namespace WebCV.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        WebCVEntities db = new WebCVEntities();
        // GET: TimKiem
        [HttpPost]
        public ActionResult Search(FormCollection f, int? page)
        {
            string sTuKhoa = "";

            sTuKhoa = f["txtTimKiem"].ToString();
            ViewBag.TuKhoa = sTuKhoa;
            //contains tim kiem giong nhu like
            List<Profile> lstCV = db.Profiles.Where(n => n.FullName.Contains(sTuKhoa)).ToList();
            //phan trang
            int pageNumber = (page ?? 1);
            int pageSize = 4;
            if (lstCV.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy truyện nào phù hợp với yêu cầu tìm kiếm. Vui lòng nhập lại thông tin tìm kiếm";
            }
            ViewBag.ThongBao = "Đã tìm thấy " + lstCV.Count() + " kết quả";
            return View(lstCV.OrderBy(n => n.FullName).ToPagedList(pageNumber, pageSize));
        }
        [HttpGet]
        public ActionResult Search(string sTuKhoa, int? page)
        {
            ViewBag.TuKhoa = sTuKhoa;
            //contains tim kiem giong nhu like
            List<Profile> lstCV = db.Profiles.Where(n => n.FullName.Contains(sTuKhoa)).ToList();

            //phan trang
            int pageNumber = (page ?? 1);
            int pageSize = 4;
            if (lstCV.Count == 0)
            {
                
                ViewBag.ThongBao = "Không tìm thấy truyện nào phù hợp với yêu cầu tìm kiếm. Vui lòng nhập lại thông tin tìm kiếm";
            }
            ViewBag.ThongBao = "Đã tìm thấy " + lstCV.Count() + " kết quả";
            return View(lstCV.OrderBy(n => n.FullName).ToPagedList(pageNumber, pageSize));
        }
    }
}
