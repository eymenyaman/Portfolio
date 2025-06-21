using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectResumeViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
