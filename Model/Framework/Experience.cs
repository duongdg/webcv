namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Experience")]
    public partial class Experience
    {
        [Key]
        public int Id_Experience { get; set; }

        [Required]
        [StringLength(100)]
        public string ExperienceName { get; set; }

        public bool Status { get; set; }
    }
}
