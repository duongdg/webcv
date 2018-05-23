using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class SkillModel
    {
        WebCVEntities context = new WebCVEntities();
        public SkillModel()
        {

        }
        public List<Skill> ListAll()
        {
            var list = context.Database.SqlQuery<Skill>("Skill_ListAll").ToList();
            return list;
        }
        public int Create(string Skillname, bool? status)
        {
            object[] parameters =
                {
                    new SqlParameter("@SkillName", Skillname),
                    new SqlParameter("@Status", status),
                };
            int res = context.Database.ExecuteSqlCommand("Skill_Insert @SkillName,@Status", parameters);
            return res;
        }
        public Skill ViewDetails(int id)
        {
            return context.Skills.Find(id);
        }
        public bool Update(Skill entity)
        {
            try
            {
                var Skill = context.Skills.Find(entity.Id_Skill);
                Skill.SkillName = entity.SkillName;
                Skill.Status = entity.Status;
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
                var Skill = context.Skills.Find(id);
                context.Skills.Remove(Skill);
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