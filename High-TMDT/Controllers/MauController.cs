using Microsoft.AspNetCore.Mvc;

namespace High_TMDT.Controllers
{
    public class MauController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
