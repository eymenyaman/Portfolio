using DAL.Context;
using Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concrete
{
    public class SkillDal
    {
        private readonly DataContext context;

        public SkillDal()
        {
            context = new DataContext();
        }
        public List<Skill> GetSkill()
        {
            return context.Skills.ToList();
        }
        public Skill SkillUpdate()
        {
            return context.Skills.FirstOrDefault();
        }
        public async Task UpdateSkillAsync(List<Skill> skills)
        {
            foreach (var skill in skills)
            {
             context.Skills.Update(skill); // veya _context.Entry(skill).State = EntityState.Modified;
            }
            await context.SaveChangesAsync(); // Bu olmalı
        }
    }
}
