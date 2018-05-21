using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class SpecializedModel
    {
        WebCVEntities context = new WebCVEntities();
        public SpecializedModel()
        {

        }
        public List<Specialized> ListAll()
        {
            var list = context.Database.SqlQuery<Specialized>("Specialized_ListAll").ToList();
            return list;
        }
        public int Create(string Specializedname, bool? status)
        {
            object[] parameters =
                {
                    new SqlParameter("@SpecializedName", Specializedname),
                    new SqlParameter("@Status", status),
                };
            int res = context.Database.ExecuteSqlCommand("Specialized_Insert @SpecializedName,@Status", parameters);
            return res;
        }
        public Specialized ViewDetails(int id)
        {
            return context.Specializeds.Find(id);
        }
        public bool Update(Specialized entity)
        {
            try
            {
                var Specialized = context.Specializeds.Find(entity.id_Specialized);
                Specialized.SpecializedName = entity.SpecializedName;
                Specialized.Status = entity.Status;
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
                var Specialized = context.Specializeds.Find(id);
                context.Specializeds.Remove(Specialized);
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