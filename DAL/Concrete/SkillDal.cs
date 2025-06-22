using DAL.Context;
using Entity;
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
    }
}
