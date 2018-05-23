using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class LanguageModel
    {
        WebCVEntities context = new WebCVEntities();
        public LanguageModel()
        {
            
        }
        public List<Language> ListAll()
        {
            var list = context.Database.SqlQuery<Language>("Language_ListAll").ToList();
            return list;
        }
        public int Create(string languagename, bool? status)
        {
            object[] parameters =
                {
                    new SqlParameter("@LanguageName", languagename),
                    new SqlParameter("@Status", status),
                };
            int res = context.Database.ExecuteSqlCommand("Langauge_Insert @LanguageName,@Status", parameters);
            return res;
        }
        public Language ViewDetails(int id)
        {
            return context.Languages.Find(id);
        }
        public bool Update(Language entity)
        {
            try
            {
                var language = context.Languages.Find(entity.Id_Language);
                language.LanguageName = entity.LanguageName;
                language.Status = entity.Status;
                context.SaveChanges();
                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
        }
        public bool Delete(int id)
        {
            try
            {
                var language = context.Languages.Find(id);
                context.Languages.Remove(language);
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