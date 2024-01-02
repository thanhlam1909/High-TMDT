using High_TMDT.Data;
using Microsoft.AspNetCore.Mvc;

namespace High_TMDT.Controllers
{
    public class HangSpController : Controller
    {
        private readonly High_TMDTContext _context;
        public HangSpController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
