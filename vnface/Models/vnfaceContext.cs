using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace vnface.Models
{
    public partial class vnfaceContext : DbContext
    {
        public vnfaceContext()
            : base("name=vnfaceContext")
        {
        }

        public virtual DbSet<face_log_tb> face_log_tb { get; set; }
        public virtual DbSet<face_tb> face_tb { get; set; }
        public virtual DbSet<user_tb> user_tb { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<face_log_tb>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<face_log_tb>()
                .Property(e => e.gender)
                .IsUnicode(false);

            modelBuilder.Entity<face_log_tb>()
                .Property(e => e.age)
                .IsUnicode(false);

            modelBuilder.Entity<face_log_tb>()
                .Property(e => e.date)
                .IsUnicode(false);

            modelBuilder.Entity<face_log_tb>()
                .Property(e => e.face_img)
                .IsUnicode(false);

            modelBuilder.Entity<face_log_tb>()
                .Property(e => e.recognize_img)
                .IsUnicode(false);

            modelBuilder.Entity<face_tb>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<face_tb>()
                .Property(e => e.gender)
                .IsUnicode(false);

            modelBuilder.Entity<face_tb>()
                .Property(e => e.age)
                .IsUnicode(false);

            modelBuilder.Entity<face_tb>()
                .Property(e => e.face_image)
                .IsUnicode(false);

            modelBuilder.Entity<face_tb>()
                .Property(e => e.feature)
                .IsUnicode(false);

            modelBuilder.Entity<user_tb>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<user_tb>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<user_tb>()
                .Property(e => e.face_image)
                .IsUnicode(false);

            modelBuilder.Entity<user_tb>()
                .Property(e => e.role)
                .IsUnicode(false);
        }
    }
}
