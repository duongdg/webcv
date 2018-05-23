using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class LanguageModel1
    {
        //private dataCV context = null;
        //public LanguageModel1()
        //{
        //    context = new dataCV();
        //}
        //public List<Language> ListAll()
        //{
        //    var list = context.Database.SqlQuery<Language>("Language_ListAll").ToList();
        //    return list;
        //}
        //public int Create(string languagename, bool? status)
        //{
        //    object[] parameters =
        //        {
        //            new SqlParameter("@LanguageName", languagename),
        //            new SqlParameter("@Status", status),
        //        };
        //    int res = context.Database.ExecuteSqlCommand("Langauge_Insert @LanguageName,@Status", parameters);
        //    return res;
        //}
    }
}
