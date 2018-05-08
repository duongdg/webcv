namespace Model.Framework
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class dataCV : DbContext
    {
        public dataCV()
            : base("name=dataCV")
        {
        }

        public virtual DbSet<Education> Educations { get; set; }
        public virtual DbSet<Experience> Experiences { get; set; }
        public virtual DbSet<Follow> Follows { get; set; }
        public virtual DbSet<Language> Languages { get; set; }
        public virtual DbSet<Profile> Profiles { get; set; }
        public virtual DbSet<Profile_Experience> Profile_Experience { get; set; }
        public virtual DbSet<Profile_Language> Profile_Language { get; set; }
        public virtual DbSet<Profile_Project> Profile_Project { get; set; }
        public virtual DbSet<Profile_Skill> Profile_Skill { get; set; }
        public virtual DbSet<Project> Projects { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Skill> Skills { get; set; }
        public virtual DbSet<Specialized> Specializeds { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Experience>()
                .HasMany(e => e.Profile_Experience)
                .WithRequired(e => e.Experience)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Language>()
                .HasMany(e => e.Profile_Language)
                .WithRequired(e => e.Language)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Profile>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<Profile>()
                .HasMany(e => e.Profile_Experience)
                .WithRequired(e => e.Profile)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Profile>()
                .HasMany(e => e.Profile_Language)
                .WithRequired(e => e.Profile)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Profile>()
                .HasMany(e => e.Profile_Project)
                .WithRequired(e => e.Profile)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Profile>()
                .HasMany(e => e.Profile_Skill)
                .WithRequired(e => e.Profile)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Project>()
                .HasMany(e => e.Profile_Project)
                .WithRequired(e => e.Project)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Role>()
                .HasMany(e => e.Users)
                .WithRequired(e => e.Role)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Skill>()
                .HasMany(e => e.Profile_Skill)
                .WithRequired(e => e.Skill)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<User>()
                .Property(e => e.PassWord)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Email)
                .IsUnicode(false);
        }
    }
}
