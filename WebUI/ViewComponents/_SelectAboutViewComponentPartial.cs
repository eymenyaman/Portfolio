using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectAboutViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
