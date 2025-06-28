using DAL.Context;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concrete
{
    public class ExperinceDal
    {
        private readonly DataContext context;

        public ExperinceDal()
        {
            context = new DataContext();
        }


        public List<Experience> GetExperinces()
        {
            return context.Experiences.ToList();
        }

    }
}
