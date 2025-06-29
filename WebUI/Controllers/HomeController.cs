using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using WebUI.Models;

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
    }
}
