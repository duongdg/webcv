namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Profile_Project
    {
        [Key]
        public int Id_Profile_Project { get; set; }

        public int Id_Profile { get; set; }

        public int Id_Project { get; set; }

        public virtual Profile Profile { get; set; }

        public virtual Project Project { get; set; }
    }
}
