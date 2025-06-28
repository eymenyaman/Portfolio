using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectResumeViewComponentPartial:ViewComponent
    {
        private readonly EducationService educationService;
        private readonly ExperinceService experinceService;

        public _SelectResumeViewComponentPartial()
        {
            educationService = new EducationService();
            experinceService = new ExperinceService();
        }
        public IViewComponentResult Invoke()
        {
            ViewBag.Experinces = experinceService.GetExperinces();

            var list = educationService.GetEducations();
            return View(list);
        }
    }
}
