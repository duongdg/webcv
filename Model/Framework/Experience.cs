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
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Experience()
        {
            Profile_Experience = new HashSet<Profile_Experience>();
        }

        [Key]
        public int Id_Experience { get; set; }

        [Required]
        [StringLength(100)]
        public string ExperienceName { get; set; }

        [StringLength(50)]
        public string Ex_Date { get; set; }

        public string Ex_Descreptiom { get; set; }

        public bool Status { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Profile_Experience> Profile_Experience { get; set; }
    }
}
