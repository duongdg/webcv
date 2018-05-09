namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class View_Profile
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id_Profile { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(100)]
        public string FullName { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(11)]
        public string Phone { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(250)]
        public string Adress { get; set; }

        [Key]
        [Column(Order = 4, TypeName = "date")]
        public DateTime DateofBirth { get; set; }

        public string Image { get; set; }

        [Key]
        [Column(Order = 5)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Sex { get; set; }

        [StringLength(250)]
        public string Hobbies { get; set; }

        [Key]
        [Column(Order = 6)]
        [StringLength(250)]
        public string Descreption { get; set; }

        [StringLength(250)]
        public string TargetJob { get; set; }

        [Key]
        [Column(Order = 7)]
        public bool Status { get; set; }

        [Key]
        [Column(Order = 8)]
        public bool Is_View { get; set; }

        [Key]
        [Column(Order = 9)]
        [StringLength(100)]
        public string ExperienceName { get; set; }

        [Key]
        [Column(Order = 10)]
        public bool Expr1 { get; set; }

        [Key]
        [Column(Order = 11)]
        [StringLength(100)]
        public string LanguageName { get; set; }

        [Key]
        [Column(Order = 12)]
        public bool Expr2 { get; set; }

        [Key]
        [Column(Order = 13)]
        [StringLength(100)]
        public string SkillName { get; set; }

        [Key]
        [Column(Order = 14)]
        public bool Expr3 { get; set; }

        [Key]
        [Column(Order = 15)]
        [StringLength(100)]
        public string ProjectName { get; set; }

        [Key]
        [Column(Order = 16)]
        public bool Expr4 { get; set; }

        [Key]
        [Column(Order = 17)]
        [StringLength(100)]
        public string SpecializedName { get; set; }

        [Key]
        [Column(Order = 18)]
        public bool Expr5 { get; set; }

        [Key]
        [Column(Order = 19)]
        [StringLength(100)]
        public string Email { get; set; }

        [Key]
        [Column(Order = 20)]
        public bool Expr6 { get; set; }

        [Key]
        [Column(Order = 21)]
        [StringLength(100)]
        public string EducationName { get; set; }

        [Key]
        [Column(Order = 22)]
        public bool Expr7 { get; set; }

        public string Ex_Descreptiom { get; set; }

        [StringLength(50)]
        public string Ex_Date { get; set; }

        public string Pr_Descreption { get; set; }
    }
}
