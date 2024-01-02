using High_TMDT.Data;
using Microsoft.AspNetCore.Mvc;

namespace High_TMDT.Controllers
{
    public class OcungController : Controller
    {   private readonly High_TMDTContext _context;
        public OcungController(High_TMDTContext dbContext)
        {
            _context = dbContext;
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
