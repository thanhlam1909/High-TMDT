using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class CpuController : Controller
    {
        private readonly High_TMDTContext _context;
        public CpuController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index(int page = 1)
        {
            int pageSize = 5;

            var cardRoiModel = new cpu_model();

            // Get the total count of CardRois
            int totalCount = _context.BoViXuLyLaptops.Count();

            // Calculate the number of pages
            int totalPages = (int)Math.Ceiling((double)totalCount / pageSize);

            // Skip and take the appropriate items for the current page
            var cardRoiList = _context.BoViXuLyLaptops.Skip((page - 1) * pageSize).Take(pageSize).ToList();

            cardRoiModel.BoViXuLyLaptopList = cardRoiList;
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
        public IActionResult Create(BoViXuLyLaptop cardRoi)
        {
            if (ModelState.IsValid)
            {
                // Add the new cardRoi to the context
                _context.BoViXuLyLaptops.Add(cardRoi);
                // Save changes to the database
                _context.SaveChanges();

                // Redirect to the Index action after successful creation
                return RedirectToAction("Index");
            }

            // If the model state is not valid, return to the Create view with the entered data
            return View(cardRoi);
        }
        public IActionResult Details(string id)
        {

            var BoViXuLyLaptops = _context.BoViXuLyLaptops.Find(id);
            if (BoViXuLyLaptops == null)
            {
                return NotFound();
            }
            return View(BoViXuLyLaptops);

        }
        [HttpGet]
        public IActionResult Edit(string id)
        {
            var BoViXuLyLaptops = _context.BoViXuLyLaptops.Find(id);

            if (BoViXuLyLaptops == null)
            {
                return NotFound();
            }

            return View(BoViXuLyLaptops);
        }

        [HttpPost]
        public IActionResult Edit(BoViXuLyLaptop BoViXuLyLaptops)
        {
            if (ModelState.IsValid)
            {
                _context.Entry(BoViXuLyLaptops).State = EntityState.Modified;
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(BoViXuLyLaptops);
        }


        public IActionResult Delete(int id)
        {
            return View();
        }
    }
}
