using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class CardTichHopController : Controller
    {
        private readonly High_TMDTContext _context;
        public CardTichHopController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index(int page = 1)
        {
            int pageSize = 5;

            var cardRoiModel = new cardtichhop_model();

            // Get the total count of CardRois
            int totalCount = _context.CardDoHoaTichHops.Count();

            // Calculate the number of pages
            int totalPages = (int)Math.Ceiling((double)totalCount / pageSize);

            // Skip and take the appropriate items for the current page
            var cardRoiList = _context.CardDoHoaTichHops.Skip((page - 1) * pageSize).Take(pageSize).ToList();

            cardRoiModel.CardDoHoaTichHopList = cardRoiList;
            cardRoiModel.TotalPages = totalPages;

            // Set ViewBag.Page
            ViewBag.Page = page;

            return View(cardRoiModel);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(CardDoHoaTichHop cardRoi)
        {
            if (ModelState.IsValid)
            {
                // Add the new cardRoi to the context
                _context.CardDoHoaTichHops.Add(cardRoi);
                // Save changes to the database
                _context.SaveChanges();

                // Redirect to the Index action after successful creation
                return RedirectToAction("Index");
            }

            // If the model state is not valid, return to the Create view with the entered data
            return View(cardRoi);
        }
        public IActionResult Details(int id)
        {

            var CardDoHoaTichHops = _context.CardDoHoaTichHops.Find(id);
            if (CardDoHoaTichHops == null)
            {
                return NotFound();
            }
            return View(CardDoHoaTichHops);

        }
        [HttpGet]
        public IActionResult Edit(int id)
        {
            var CardDoHoaTichHops = _context.CardDoHoaTichHops.Find(id);

            if (CardDoHoaTichHops == null)
            {
                return NotFound();
            }

            return View(CardDoHoaTichHops);
        }

        [HttpPost]
        public IActionResult Edit(CardDoHoaTichHop CardDoHoaTichHops)
        {
            if (ModelState.IsValid)
            {
                _context.Entry(CardDoHoaTichHops).State = EntityState.Modified;
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(CardDoHoaTichHops);
        }


        public IActionResult Delete(int id)
        {
            return View();
        }
    }
}
