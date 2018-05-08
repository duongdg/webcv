namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Profile_Language
    {
        [Key]
        public int Id_Profile_Language { get; set; }

        public int Id_Profile { get; set; }

        public int Id_Language { get; set; }

        public virtual Language Language { get; set; }

        public virtual Profile Profile { get; set; }
    }
}
