using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Common
{
    public class ProfileDAO
    {
        WebCVEntities db = new WebCVEntities();
        public List<string> ListName(string txtSearch)
        {
            return db.Profiles.Where(x => x.FullName.Contains(txtSearch)).Select(x => x.FullName).ToList();
        }
    }
}