using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebCV.Areas.Admin.Models
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Mời bạn nhập vào Email")]
        public string Email { set; get; }
        [Required(ErrorMessage = "Mời bạn nhập vào PassWord")]
        public string PassWord { set; get; }

        public bool Remember { set; get; }

    }
}