namespace Model.Framework
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DBconnectWebSiteCV : DbContext
    {
        public DBconnectWebSiteCV()
            : base("name=DBconnectWebSiteCV")
        {
        }

        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Education> Educations { get; set; }
        public virtual DbSet<Experience> Experiences { get; set; }
        public virtual DbSet<Follow> Follows { get; set; }
        public virtual DbSet<Language> Languages { get; set; }
        public virtual DbSet<Project> Projects { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Skill> Skills { get; set; }
        public virtual DbSet<Specialized> Specializeds { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Userss> Usersses { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Admin>()
                .Property(e => e.PassWord)
                .IsUnicode(false);

            modelBuilder.Entity<Admin>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Admin>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<Role>()
                .HasMany(e => e.Admins)
                .WithRequired(e => e.Role)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Userss>()
                .Property(e => e.PassWord)
                .IsUnicode(false);

            modelBuilder.Entity<Userss>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Userss>()
                .Property(e => e.Phone)
                .IsUnicode(false);
        }
    }
}
