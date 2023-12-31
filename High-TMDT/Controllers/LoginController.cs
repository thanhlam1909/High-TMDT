using High_TMDT.Data;
using Microsoft.AspNetCore.Mvc;

using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class LoginController : Controller
    {
        private readonly High_TMDTContext _context;

        public LoginController(High_TMDTContext dbContext)
        {
            _context = dbContext;
        }
        public IActionResult Index()
        {
            return View();
        }

    }
}
