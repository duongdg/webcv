using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class AdminDAO
    {
        WebCVEntities db = new WebCVEntities();
        public AdminDAO()
        {

        }
        public long Insert(User entity)
        {
            db.Users.Add(entity);
            db.SaveChanges();
            return entity.Id_User;
        }
        public User GetByID(string email)
        {
            return db.Users.SingleOrDefault(x => x.Email == email);
        }
        public int Login(string email, string password)
        {
            var result = db.Users.SingleOrDefault(x => x.Email == email && x.PassWord == password);
            if (result == null)
            {
                return 0;
            }
            else
            {
                if (result.Status == false)
                {
                    return -1;
                }
                else
                {
                    if (result.PassWord == password)
                        return 1;
                    else
                        return -2;
                }
            }
        }
    }
}