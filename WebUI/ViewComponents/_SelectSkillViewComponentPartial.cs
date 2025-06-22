using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectSkillViewComponentPartial:ViewComponent
    {
        private readonly SkillService skillService;

        public _SelectSkillViewComponentPartial()
        {
            skillService = new SkillService();
        }

        public IViewComponentResult Invoke()
        {
            var skills = skillService.GetSkill();
            return View(skills);
        }
    }
}
