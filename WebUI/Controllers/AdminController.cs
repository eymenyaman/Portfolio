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
        private readonly SkillService _skillservice = new SkillService();
        private readonly EducationService _educationservice = new EducationService();
        private readonly ExperinceService _experinceService = new ExperinceService();

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

        public async Task<IActionResult> EditSkills()
        {
            var model = _skillservice.GetSkill(); // List<Skill> döner
            return View(model); // View artık @model List<Skill>
        }

        [HttpPost]
        public async Task<IActionResult> EditSkills(List<Skill> model)
        {
            if (ModelState.IsValid)
            {
                var existingSkills = _skillservice.GetSkill();

                foreach (var item in model)
                {
                    var existing = existingSkills.FirstOrDefault(s => s.Id == item.Id);
                    if (existing != null)
                    {
                        existing.Name = item.Name;
                        existing.Rating = item.Rating;
                    }
                }

                await _skillservice.UpdateSkillAsync(existingSkills);

                // Doğru yönlendirmeyi yap:
                return RedirectToAction("Index","Home"); // <- burayı projenize göre düzenle
            }

            return View(model);
        }
        public async Task<IActionResult> EditEducation()
        {
            var model = _educationservice.GetEducations();   
            return View(model); 
        }
            [HttpPost]
        public async Task<IActionResult> EditEducation(List<Education> model)
        {
            if (ModelState.IsValid)
            {
                var education = _educationservice.GetEducations();

                foreach (var item in model)
                {
                    var existing = education.FirstOrDefault(s => s.Id == item.Id);
                    if (existing != null)
                    {
                        existing.Text = item.Text;
                        existing.StartDate = item.StartDate;
                        existing.EndDate = item.EndDate;
                        existing.SchoolName = item.SchoolName;
                        existing.Degree = item.Degree;
                       
                    }
                }

                await _educationservice.UpdateEducationAsync(education);

                // Doğru yönlendirmeyi yap:
                return RedirectToAction("Index", "Home"); // <- burayı projenize göre düzenle
            }

            return View(model);
        }
        public async Task<IActionResult> EditExperince()
        {
            var model = _experinceService.GetExperinces();  
            return View(model);
        }
        [HttpPost]
        public async Task<IActionResult> EditExperince(List<Experience> model)
        {
            if (ModelState.IsValid)
            {
                var experiences = _experinceService.GetExperinces();

                foreach (var item in model)
                {
                    var experience = experiences.FirstOrDefault(s => s.Id == item.Id);
                    if (experience != null)
                    {
                        experience.StartDate = item.StartDate;
                        experience.EndDate = item.EndDate;
                        experience.Text = item.Text;
                        experience.CompanyName = item.CompanyName;
                       
                    }
                }

                await _experinceService.UpdateExperinceAsync(experiences);

                // Doğru yönlendirmeyi yap:
                return RedirectToAction("Index", "Home"); // <- burayı projenize göre düzenle
            }

            return View(model);
        }
    }
}
