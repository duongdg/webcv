//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebCV.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public int Id_User { get; set; }
        public Nullable<int> Id_Profile { get; set; }
        public int Id_Role { get; set; }
        public string PassWord { get; set; }
        public string Email { get; set; }
        public bool Status { get; set; }
    
        public virtual Profile Profile { get; set; }
        public virtual Role Role { get; set; }
    }
}
