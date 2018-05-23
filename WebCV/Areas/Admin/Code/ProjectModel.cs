using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebCV.Models;

namespace WebCV.Areas.Admin.Code
{
    public class ProjectModel
    {
        WebCVEntities context = new WebCVEntities();
        public ProjectModel()
        {

        }
        public List<Project> ListAll()
        {
            var list = context.Database.SqlQuery<Project>("Project_ListAll").ToList();
            return list;
        }
        public int Create(string Projectname, string pr_descreption, bool? status)
        {
            object[] parameters =
                {
                    new SqlParameter("@ProjectName", Projectname),
                    new SqlParameter("@Pr_Descreption", Projectname),
                    new SqlParameter("@Status", status),
                };
            int res = context.Database.ExecuteSqlCommand("Project_Insert @ProjectName,@Pr_Descreption,@Status", parameters);
            return res;
        }
        public Project ViewDetails(int id)
        {
            return context.Projects.Find(id);
        }
        public bool Update(Project entity)
        {
            try
            {
                var Project = context.Projects.Find(entity.Id_Project);
                Project.ProjectName = entity.ProjectName;
                Project.Status = entity.Status;
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
                var Project = context.Projects.Find(id);
                context.Projects.Remove(Project);
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