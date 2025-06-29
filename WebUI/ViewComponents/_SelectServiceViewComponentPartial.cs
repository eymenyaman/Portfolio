using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectServiceViewComponentPartial : ViewComponent
    {
        private readonly ServicesService sr;

        public _SelectServiceViewComponentPartial()
        {
            sr = new ServicesService();
        }
        public IViewComponentResult Invoke()
        {
            var Servis = sr.GetServices();
            return View(Servis);
        }
    }
}
