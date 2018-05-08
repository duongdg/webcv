namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Profile_Skill
    {
        [Key]
        public int Id_Profile_Skill { get; set; }

        public int Id_Profile { get; set; }

        public int Id_Skill { get; set; }

        public virtual Profile Profile { get; set; }

        public virtual Skill Skill { get; set; }
    }
}
