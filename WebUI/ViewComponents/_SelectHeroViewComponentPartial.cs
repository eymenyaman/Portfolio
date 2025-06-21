using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectHeroViewComponentPartial : ViewComponent
    {
        private readonly ProfileService profileService;

        public _SelectHeroViewComponentPartial()
        {
            profileService = new ProfileService();
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var profile = await profileService.GetProfileAsync();
            return View(profile);
        }
    }
}

