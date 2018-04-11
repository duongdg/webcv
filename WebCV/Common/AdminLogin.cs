using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebCV.Common
{
    [Serializable]
    public class AdminLogin
    {
        public long Id_Admin { set; get; }
        public string Email { set; get; }
    }
}