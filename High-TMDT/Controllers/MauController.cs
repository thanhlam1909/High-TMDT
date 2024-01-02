using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class MauController : Controller
    {
        private readonly High_TMDTContext _context;
        public MauController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index(int page = 1)
        {
            int pageSize = 5;

            var cardRoiModel = new Mau_model();

            // Get the total count of CardRois
            int totalCount = _context.Maus.Count();

            // Calculate the number of pages
            int totalPages = (int)Math.Ceiling((double)totalCount / pageSize);

            // Skip and take the appropriate items for the current page
            var cardRoiList = _context.Maus.Skip((page - 1) * pageSize).Take(pageSize).ToList();

            cardRoiModel.MauList = cardRoiList;
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
        public IActionResult Create(Mau cardRoi)
        {
            if (ModelState.IsValid)
            {
                // Add the new cardRoi to the context
                _context.Maus.Add(cardRoi);
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

            var Maus = _context.Maus.Find(id);
            if (Maus == null)
            {
                return NotFound();
            }
            return View(Maus);

        }
        [HttpGet]
        public IActionResult Edit(int id)
        {
            var Maus = _context.Maus.Find(id);

            if (Maus == null)
            {
                return NotFound();
            }

            return View(Maus);
        }

        [HttpPost]
        public IActionResult Edit(Mau Maus)
        {
            if (ModelState.IsValid)
            {
                _context.Entry(Maus).State = EntityState.Modified;
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(Maus);
        }


        public IActionResult Delete(int id)
        {
            return View();
        }
    }
}
