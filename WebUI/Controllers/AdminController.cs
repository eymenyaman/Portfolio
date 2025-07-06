using BLL.Service;
using Entity;
using Microsoft.AspNetCore.Mvc;
using WebUI.Services;

namespace WebUI.Controllers
{
    public class AdminController : Controller
    {
        private readonly ProfileService _profileService = new ProfileService();
        private readonly AboutService _aboutService = new AboutService();

        public async Task<IActionResult> EditProfile()
        {
            var model = await  _profileService.GetProfileAsync();
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditProfile(Profile model, IFormFile newProfileImage, IFormFile newBackgroundImage)
        {
            ModelState.Remove("newBackgroundImage");
            ModelState.Remove("newProfileImage");
            if (ModelState.IsValid)
            {
                Profile profile = await _profileService.GetProfileAsync();

                if (newProfileImage != null)
                {
                    profile.ProfileImage = await ImageOperations.UploadImageAsync(newProfileImage); 
                }

                if (newBackgroundImage != null)
                {
                    profile.BackgroundImage = await ImageOperations.UploadImageAsync(newBackgroundImage);
                }

                profile.Surname = model.Surname;
                profile.Name = model.Name;
                profile.Title = model.Title;

                _profileService.UpdateProfileAsync(profile);

                return RedirectToAction("Index", "Home");
            }
            ModelState.AddModelError("", "Bu model dışında kalan validation mesajları içindir.");
            return View(model);
        }

        public async Task<IActionResult> EditAbout()
        {
            var model = _aboutService.GetAbout();
            return View(model);
        }


        [HttpPost]
        public async Task<IActionResult> EditAbout(About model, IFormFile file)
        {
            ModelState.Remove("ImageUrl");
            ModelState.Remove("file");
            if (ModelState.IsValid)
            {
                var about = _aboutService.GetAbout();

                if (file != null)
                {
                    about.ImageUrl = await ImageOperations.UploadImageAsync(file);
                }

                about.Coverletter = model.Coverletter;
                about.BirthDate = model.BirthDate;
                about.Phone = model.Phone;
                about.Email = model.Email;
                about.Freelance = model.Freelance;
                about.Degree = model.Degree;
                about.Text = model.Text;
                about.Age = model.Age;
                about.City = model.City;
                about.Website = model.Website;

                await _aboutService.UpdateAboutAsync(about);

                return RedirectToAction("Index", "Home");
            }
            return View(model);
        }
    }
}
