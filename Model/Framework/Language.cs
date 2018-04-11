namespace Model.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Language")]
    public partial class Language
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Language()
        {
            Usersses = new HashSet<Userss>();
        }

        [Key]
        public int Id_Language { get; set; }

        [Required(ErrorMessage ="Bạn chưa nhập ngôn ngữ")]
        [StringLength(100,ErrorMessage ="Số kí tự tối đa là 100")]
        [DisplayName("Ngôn ngữ")]
        public string LanguageName { get; set; }

        [DisplayName("Trạng thái")]
        public bool Status { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Userss> Usersses { get; set; }
    }
}
