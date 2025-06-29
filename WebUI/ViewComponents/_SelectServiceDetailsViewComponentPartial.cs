using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectServiceDetailsViewComponentPartial:ViewComponent
    {
        private readonly ServicesService servicesService;
        private readonly SkillService skillService;

        public _SelectServiceDetailsViewComponentPartial()
        {
            servicesService = new ServicesService();
            skillService = new SkillService();
        }

        public IViewComponentResult Invoke(int id)
        {
            ViewBag.Skills = skillService.GetSkill();
            var service = servicesService.GetById(id);

            return View(service);
        }
    }
}
