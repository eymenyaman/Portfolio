using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectAboutViewComponentPartial:ViewComponent
    {
        private readonly AboutService aboutService;

        public _SelectAboutViewComponentPartial()
        {
            aboutService = new AboutService();
        }
        public IViewComponentResult Invoke()
        {
            var about = aboutService.GetAbout();
            return View(about);
        }
    }
}
