using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectPortfolioViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
