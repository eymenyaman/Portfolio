using BLL.Service;
using Microsoft.AspNetCore.Mvc;

namespace WebUI.ViewComponents
{
    public class _SelectContactViewComponentPartial : ViewComponent
    {
        private readonly ContactService contactService;

        public _SelectContactViewComponentPartial()
        {
            contactService = new ContactService();
        }

        public IViewComponentResult Invoke()
        {
            var contact = contactService.GetContact();
            return View(contact);
        }
    }
}
