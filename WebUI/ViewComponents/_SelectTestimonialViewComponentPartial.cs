using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectTestimonialViewComponentPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
