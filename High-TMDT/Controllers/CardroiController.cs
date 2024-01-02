using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class CardroiController : Controller
    {
        private readonly High_TMDTContext _context;
        public CardroiController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index(int page = 1)
        {
            int pageSize = 5;

            var cardRoiModel = new Card_roi_model();

            // Get the total count of CardRois
            int totalCount = _context.CardRois.Count();

            // Calculate the number of pages
            int totalPages = (int)Math.Ceiling((double)totalCount / pageSize);

            // Skip and take the appropriate items for the current page
            var cardRoiList = _context.CardRois.Skip((page - 1) * pageSize).Take(pageSize).ToList();

            cardRoiModel.CardRoiList = cardRoiList;
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
        public IActionResult Create(CardRoi cardRoi)
        {
            if (ModelState.IsValid)
            {
                // Add the new cardRoi to the context
                _context.CardRois.Add(cardRoi);
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

            var cardRoi = _context.CardRois.Find(id);
            if (cardRoi == null)
            {
                return NotFound();
            }
            return View(cardRoi);

        }
        [HttpGet]
        public IActionResult Edit(int id)
        {
            var cardRoi = _context.CardRois.Find(id);

            if (cardRoi == null)
            {
                return NotFound();
            }

            return View(cardRoi);
        }

        [HttpPost]
        public IActionResult Edit(CardRoi cardRoi)
        {
            if (ModelState.IsValid)
            {
                _context.Entry(cardRoi).State = EntityState.Modified;
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(cardRoi);
        }


        public IActionResult Delete(int id)
        {
            return View();
        }
    }
}
