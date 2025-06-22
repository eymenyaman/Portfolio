using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectResumeViewComponentPartial:ViewComponent
    {
        private readonly EducationService educationService;

        public _SelectResumeViewComponentPartial()
        {
            educationService = new EducationService();
        }
        public IViewComponentResult Invoke()
        {
            var list = educationService.GetEducations();
            return View(list);
        }
    }
}
