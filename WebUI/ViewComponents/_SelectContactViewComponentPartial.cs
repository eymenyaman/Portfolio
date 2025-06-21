using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectContactViewComponentPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
