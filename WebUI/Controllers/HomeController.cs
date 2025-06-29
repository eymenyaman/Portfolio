using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using WebUI.EmailServices;
using WebUI.Models;
using WEBUI.EmailServices;

namespace WebUI.Controllers
{
    public class HomeController : Controller
    {        
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult ServiceDetails(int id)
        {
            return View(id);
        }

        [HttpPost]
        public IActionResult EmailGonder(Mail mail)
        {

            MailHelper.SendMail(mail.Message, mail.Email,mail.Subject);

            return RedirectToAction("Index");
        }
    }
}
