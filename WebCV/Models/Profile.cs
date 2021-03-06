//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebCV.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Profile
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Profile()
        {
            this.Follows = new HashSet<Follow>();
            this.Profile_Experience = new HashSet<Profile_Experience>();
            this.Profile_Language = new HashSet<Profile_Language>();
            this.Profile_Project = new HashSet<Profile_Project>();
            this.Profile_Skill = new HashSet<Profile_Skill>();
        }
    
        public int Id_Profile { get; set; }
        public string FullName { get; set; }
        public string Phone { get; set; }
        public string Adress { get; set; }
        public System.DateTime DateofBirth { get; set; }
        public string Image { get; set; }
        public int Sex { get; set; }
        public string Hobbies { get; set; }
        public string Descreption { get; set; }
        public string TargetJob { get; set; }
        public bool Status { get; set; }
        public Nullable<int> Id_Education { get; set; }
        public Nullable<int> Id_Specialized { get; set; }
        public bool Is_View { get; set; }
    
        public virtual Education Education { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Follow> Follows { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Profile_Experience> Profile_Experience { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Profile_Language> Profile_Language { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Profile_Project> Profile_Project { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Profile_Skill> Profile_Skill { get; set; }
        public virtual Specialized Specialized { get; set; }
        public virtual User User { get; set; }
    }
}
