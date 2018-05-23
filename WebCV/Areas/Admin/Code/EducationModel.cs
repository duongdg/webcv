using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class EducationModel
    {
        WebCVEntities context = new WebCVEntities();
        public EducationModel()
        {

        }
        public List<Education> ListAll()
        {
            var list = context.Database.SqlQuery<Education>("Education_ListAll").ToList();
            return list;
        }
        public int Create(string Educationname, bool? status)
        {
            object[] parameters =
                {
                    new SqlParameter("@EducationName", Educationname),
                    new SqlParameter("@Status", status),
                };
            int res = context.Database.ExecuteSqlCommand("Education_Insert @EducationName,@Status", parameters);
            return res;
        }
        public Education ViewDetails(int id)
        {
            return context.Educations.Find(id);
        }
        public bool Update(Education entity)
        {
            try
            {
                var Education = context.Educations.Find(entity.Id_Education);
                Education.EducationName = entity.EducationName;
                Education.Status = entity.Status;
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
                var Education = context.Educations.Find(id);
                context.Educations.Remove(Education);
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