using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCV.Areas.Admin.Controllers;
using WebCV.Common;
using WebCV.Models;

namespace WebCV.Controllers
{
    public class AddInformationProfileController : Controller
    {
        WebCVEntities db = new WebCVEntities();
        // GET: AddInformationProfile
        public ActionResult Create()
        {
            var session = (AdminLogin)Session[CommonConstant.ADMIN_SESION];
            ViewBag.Id_Education = new SelectList(db.Educations.Where(x => x.Status == true), "Id_Education", "EducationName");
            ViewBag.Id_Specialized = new SelectList(db.Specializeds.Where(x => x.Status == true), "id_Specialized", "SpecializedName");
            ViewBag.Id_Language = new SelectList(db.Languages.Where(x => x.Status == true), "Id_Language", "LanguageName");
            if (session != null)
            {
                long id_profile = session.Id_Admin;
                string id_ex = Request.Form["Id_Education"];
                string id_specializeds = Request.Form["id_Specialized"];
                string id_language = Request.Form["Id_Language"];
                string sex = Request.Form["Sex"];
                string img = Request.Form["File"];
                //Profile
                string fullname = Request.Form["FullName"];
                string phone = Request.Form["Phone"];
                string adress = Request.Form["Adress"];
                string date = Request.Form["Date"];
                string hobby = Request.Form["Hobbies"];
                string descreption = Request.Form["Descreption"];
                string targetjob = Request.Form["TargetJob"];
                if (img != null)
                {
                    Image newB = Image.FromFile(@"C:\Users\DuongNguyen\Documents\Visual Studio 2017\Projects\WebCV\WebCV\Content\Home\images\" + img);
                    newB.Save(@"C:\Users\DuongNguyen\Documents\Visual Studio 2017\Projects\WebCV\WebCV\Content\Home\images\img" + img);
                }

                //project
                string projectname = Request.Form["ProjectName"];
                string projectdescreption = Request.Form["ProjectDescreption"];

                //skill
                string skillname = Request.Form["SkillName"];

                //experience
                string ex_name = Request.Form["ExperienceName"];
                string ex_date = Request.Form["DateExperience"];
                string ex_descreption = Request.Form["ExperienceDescreption"];

                try
                {
                    Profile cv = new Profile();
                    cv.Id_Profile = (int)id_profile;
                    cv.FullName = fullname;
                    cv.Phone = phone;
                    cv.Adress = adress;
                    cv.DateofBirth = DateTime.Parse(date);
                    cv.Image = "img" + img;
                    cv.Sex = int.Parse(sex);
                    cv.Hobbies = hobby;
                    cv.Descreption = descreption;
                    cv.TargetJob = targetjob;
                    cv.Status = true;
                    cv.Id_Education = int.Parse(id_ex);
                    cv.Id_Specialized = int.Parse(id_specializeds);
                    cv.Is_View = true;

                    //add project
                    Project project = new Project();
                    project.ProjectName = projectname;
                    project.Pr_Descreption = projectdescreption;
                    project.Status = true;
                    db.Projects.Add(project);

                    //add skill
                    Skill skill = new Skill();
                    skill.SkillName = skillname;
                    skill.Status = true;
                    db.Skills.Add(skill);

                    //add exxperience
                    Experience experience = new Experience();
                    experience.ExperienceName = ex_name;
                    experience.Ex_Date = ex_date;
                    experience.Ex_Descreptiom = ex_descreption;
                    experience.Status = true;
                    db.Experiences.Add(experience);

                    db.Profiles.Add(cv);
                    db.SaveChanges();
                    if (cv.Id_Profile > 0 && project.Id_Project > 0 && skill.Id_Skill > 0 && experience.Id_Experience > 0 && int.Parse(id_language) > 0)
                    {
                        //add profile_project
                        Profile_Project cv_project = new Profile_Project();
                        cv_project.Id_Profile = cv.Id_Profile;
                        cv_project.Id_Project = project.Id_Project;
                        db.Profile_Project.Add(cv_project);

                        //add profile_language
                        Profile_Language cv_language = new Profile_Language();
                        cv_language.Id_Profile = cv.Id_Profile;
                        cv_language.Id_Language = int.Parse(id_language);
                        db.Profile_Language.Add(cv_language);

                        //add profile_skill
                        Profile_Skill cv_skill = new Profile_Skill();
                        cv_skill.Id_Profile = cv.Id_Profile;
                        cv_skill.Id_Skill = skill.Id_Skill;
                        db.Profile_Skill.Add(cv_skill);

                        //add profile_experience
                        Profile_Experience cv_experience = new Profile_Experience();
                        cv_experience.Id_Profile = cv.Id_Profile;
                        cv_experience.Id_Experience = experience.Id_Experience;
                        db.Profile_Experience.Add(cv_experience);

                        db.SaveChanges();
                    }
                }
                catch (Exception ex)
                {

                }
            }
            return View();
        }
        public ActionResult Edit()
        {
            return View();
        }
    }
}