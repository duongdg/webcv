using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class ExperienceModel
    {
        WebCVEntities context = new WebCVEntities();
        public ExperienceModel()
        {

        }
        public List<Experience> ListAll()
        {
            var list = context.Database.SqlQuery<Experience>("Experience_ListAll").ToList();
            return list;
        }
        public int Create(string Experiencename,string ex_date, string ex_descreptiom, bool? status)
        {
            object[] parameters =
                {
                    new SqlParameter("@ExperienceName", Experiencename),
                    new SqlParameter("@Ex_Date", ex_date),
                    new SqlParameter("@Ex_Descreptiom", ex_descreptiom),
                    new SqlParameter("@Status", status),
                };
            int res = context.Database.ExecuteSqlCommand("Experience_Insert @ExperienceName,@Ex_Date,@Ex_Descreptiom,@Status", parameters);
            return res;
        }
        public Experience ViewDetails(int id)
        {
            return context.Experiences.Find(id);
        }
        public bool Update(Experience entity)
        {
            try
            {
                var Experience = context.Experiences.Find(entity.Id_Experience);
                Experience.ExperienceName = entity.ExperienceName;
                Experience.Ex_Date = entity.Ex_Date;
                Experience.Ex_Descreptiom = entity.Ex_Descreptiom;
                Experience.Status = entity.Status;
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
                var Experience = context.Experiences.Find(id);
                context.Experiences.Remove(Experience);
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