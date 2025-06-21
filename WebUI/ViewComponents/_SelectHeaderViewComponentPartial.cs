using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectHeaderViewComponentPartial:ViewComponent
    {
        private readonly ProfileService profileService;

        public _SelectHeaderViewComponentPartial()
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
