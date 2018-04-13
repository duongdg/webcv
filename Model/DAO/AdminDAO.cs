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
        dataCV db = null;
        public AdminDAO()
        {
            db = new dataCV();

        }
        public long Insert(User entity)
        {
            db.Users.Add(entity);
            db.SaveChanges();
            return entity.Id_User;
        }
        public User GetByID(string email)
        {
            return db.Users.SingleOrDefault(x=>x.Email==email);
        }
        public int Login(string email,string password)
        {
            var result = db.Users.SingleOrDefault(x => x.Email == email && x.PassWord == password);
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
