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
    
    public partial class Follow
    {
        public int Id_Follow { get; set; }
        public Nullable<int> Follower_id { get; set; }
        public int Followed_id { get; set; }
    
        public virtual Profile Profile { get; set; }
    }
}
