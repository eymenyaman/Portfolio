using DAL.Context;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concrete
{
    public class EducationDal
    {
        private readonly DataContext context;

        public EducationDal()
        {
            context = new DataContext();
        }

        public List<Education> GetEducations()
        {
            return context.Educations.ToList();
        }
    }
}
