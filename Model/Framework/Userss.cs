namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Userss")]
    public partial class Userss
    {
        [Key]
        public int Id_User { get; set; }

        [Required]
        [StringLength(100)]
        public string FullName { get; set; }

        [Required]
        [StringLength(100)]
        public string PassWord { get; set; }

        [Required]
        [StringLength(100)]
        public string Email { get; set; }

        [Required]
        [StringLength(11)]
        public string Phone { get; set; }

        [Required]
        [StringLength(250)]
        public string Adress { get; set; }

        [Column(TypeName = "date")]
        public DateTime DateofBirth { get; set; }

        public int Sex { get; set; }

        [StringLength(250)]
        public string Hobbies { get; set; }

        [Required]
        [StringLength(250)]
        public string Descreption { get; set; }

        [StringLength(250)]
        public string TargetJob { get; set; }

        public bool Status { get; set; }

        public int? Id_Project { get; set; }

        public int? Id_Follow { get; set; }

        public int? Id_Language { get; set; }

        public int? Id_Skill { get; set; }

        public int? Id_Experience { get; set; }

        public int? Id_Education { get; set; }

        public int? Id_Specialized { get; set; }

        public bool Is_View { get; set; }

        public virtual Education Education { get; set; }

        public virtual Experience Experience { get; set; }

        public virtual Follow Follow { get; set; }

        public virtual Language Language { get; set; }

        public virtual Project Project { get; set; }

        public virtual Skill Skill { get; set; }

        public virtual Specialized Specialized { get; set; }
    }
}
