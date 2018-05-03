namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        [Key]
        public int Id_User { get; set; }

        public int Id_Profile { get; set; }

        public int Id_Role { get; set; }

        [Required]
        [StringLength(100)]
        public string PassWord { get; set; }

        [Required]
        [StringLength(100)]
        public string Email { get; set; }

        public bool Status { get; set; }

        public virtual Profile Profile { get; set; }

        public virtual Role Role { get; set; }
    }
}
