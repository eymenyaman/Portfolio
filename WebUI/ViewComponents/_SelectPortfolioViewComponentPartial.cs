using BLL.Service;
using DAL.Concrete;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectPortfolioViewComponentPartial:ViewComponent
    {
        private readonly PortfolioService portfolioService;

        public _SelectPortfolioViewComponentPartial()
        {
            portfolioService = new PortfolioService();
        }

        public IViewComponentResult Invoke()
        {
            var models = portfolioService.GetPortfolios();
            return View(models);
        }
    }
}
