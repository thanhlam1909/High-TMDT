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
