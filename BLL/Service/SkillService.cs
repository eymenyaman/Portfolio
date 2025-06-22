using DAL.Concrete;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Service
{
    public class SkillService
    {
        private readonly SkillDal skillDal;

        public SkillService()
        {
            skillDal = new SkillDal();
        }
        public List<Skill> GetSkill()
        {
            return skillDal.GetSkill();
        }
    }
}
