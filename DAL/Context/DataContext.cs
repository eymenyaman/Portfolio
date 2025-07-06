using Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Context
{
    public class DataContext:DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=EYMEN\\SQLDERS; Database=Portfolio; Uid=sa; Pwd=1; TrustServerCertificate=true");
           
        }

        public DbSet<Profile> Profiles { get; set; }
        public DbSet<SocialMedia> SocialMedia { get; set; }
        public DbSet<About> Abouts { get; set; }
        public DbSet<Skill> Skills { get; set; }
        public DbSet<Education> Educations { get; set; }
        public DbSet<Experience> Experiences { get; set; }
        public DbSet<Portfolio> Portfolios { get; set; }
        public DbSet<Service> Services { get; set; }
        public DbSet<Testimonial> Testimonials { get; set; }
        public DbSet<ServiceDetails> ServiceDetails { get; set; }
        public DbSet<Contact> Contacts { get; set; }
    }
}
