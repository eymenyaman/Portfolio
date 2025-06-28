using DAL.Concrete;
using DAL.Context;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Service
{
    public class PortfolioService
    {
        private readonly PortfolioDal portfolioDal;

        public PortfolioService()
        {
            portfolioDal = new PortfolioDal();
        }

        public List<Portfolio> GetPortfolios()
        {
            return portfolioDal.GetPortfolios();
        }
    }
}
