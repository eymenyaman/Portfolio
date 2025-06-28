using DAL.Context;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concrete
{
    public class PortfolioDal 
    {
        private readonly DataContext context;

        public PortfolioDal()
        {
            context = new DataContext();
        }

        public List<Portfolio> GetPortfolios()
        {
            return context.Portfolios.ToList();
        }
    }
}
