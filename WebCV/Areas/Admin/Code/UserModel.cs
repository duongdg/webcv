using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class UserModel
    {
        WebCVEntities context = new WebCVEntities();
        public UserModel()
        {

        }
        public List<User> ListAll()
        {
            var list = context.Database.SqlQuery<User>("User_ListAll").ToList();
            return list;
        }
        public long Create(User entity)
        {
            context.Users.Add(entity);
            context.SaveChanges();
            return entity.Id_User;
        }
        public bool CheckEmail(string email)
        {
            return context.Users.Count(x => x.Email == email) > 0;
        }
        public User ViewDetails(int id)
        {
            return context.Users.Find(id);
        }
        public bool Update(User entity)
        {
            try
            {
                var User = context.Users.Find(entity.Id_User);
                User.Status = entity.Status;
                User.Id_Role = entity.Id_Role;
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public bool Delete(int id)
        {
            try
            {
                var User = context.Users.Find(id);
                context.Users.Remove(User);
                context.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}