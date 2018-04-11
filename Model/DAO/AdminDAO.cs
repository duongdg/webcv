using Model.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class AdminDAO
    {
        DBconnectWebSiteCV db = null;
        public AdminDAO()
        {
            db = new DBconnectWebSiteCV();

        }
        public long Insert(Admin entity)
        {
            db.Admins.Add(entity);
            db.SaveChanges();
            return entity.Id_Admin;
        }
        public Admin GetByID(string email)
        {
            return db.Admins.SingleOrDefault(x=>x.Email==email);
        }
        public int Login(string email,string password)
        {
            var result = db.Admins.SingleOrDefault(x => x.Email == email && x.PassWord == password);
            if(result==null)
            {
                return 0;
            }
            else
            {
                if(result.Status==false)
                {
                    return -1;
                }
                else
                {
                    if(result.PassWord==password)
                        return 1;
                    else
                        return -2;
                }
            }
        }
    }
}
