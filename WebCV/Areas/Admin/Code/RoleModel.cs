using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class RoleModel
    {
        WebCVEntities context = new WebCVEntities();
        public RoleModel()
        {

        }
        public List<Role> ListAll()
        {
            var list = context.Database.SqlQuery<Role>("Role_ListAll").ToList();
            return list;
        }
        public int Create(string Rolename, bool? status)
        {
            object[] parameters =
                {
                    new SqlParameter("@RoleName", Rolename),
                    new SqlParameter("@Status", status),
                };
            int res = context.Database.ExecuteSqlCommand("Role_Insert @RoleName,@Status", parameters);
            return res;
        }
        public Role ViewDetails(int id)
        {
            return context.Roles.Find(id);
        }
        public bool Update(Role entity)
        {
            try
            {
                var Role = context.Roles.Find(entity.Id_Role);
                Role.RoleName = entity.RoleName;
                Role.Status = entity.Status;
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
                var Role = context.Roles.Find(id);
                context.Roles.Remove(Role);
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