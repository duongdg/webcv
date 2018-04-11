using Model.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class LanguageModel
    {
        private DBconnectWebSiteCV context = null;
        public LanguageModel()
        {
            context = new DBconnectWebSiteCV();
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
    }
}
