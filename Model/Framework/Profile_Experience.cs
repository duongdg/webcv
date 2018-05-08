namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Profile_Experience
    {
        [Key]
        public int Id_Profile_Experience { get; set; }

        public int Id_Profile { get; set; }

        public int Id_Experience { get; set; }

        public virtual Experience Experience { get; set; }

        public virtual Profile Profile { get; set; }
    }
}
