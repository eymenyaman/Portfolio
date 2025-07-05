using BLL.Service;
using Entity;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.Controllers
{
    public class AdminController : Controller
    {
        private readonly ProfileService _profileService = new ProfileService();

        public async Task<IActionResult> EditProfile()
        {
            var model = await  _profileService.GetProfileAsync();
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditProfile(Profile model, IFormFile newProfileImage, IFormFile newBackgroundImage)
        {

            if (ModelState.IsValid)
            {

            }
            ModelState.AddModelError("", "Bu model dışında kalan validation mesajları içindir.");
            return View(model);
        }
    }
}
