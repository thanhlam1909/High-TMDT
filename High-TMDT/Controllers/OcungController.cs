using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class OcungController : Controller
    {
        private readonly High_TMDTContext _context;
        public OcungController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index(int page = 1)
        {
            int pageSize = 5;

            var cardRoiModel = new O_cung_model();

            // Get the total count of CardRois
            int totalCount = _context.OcungLaptops.Count();

            // Calculate the number of pages
            int totalPages = (int)Math.Ceiling((double)totalCount / pageSize);

            // Skip and take the appropriate items for the current page
            var cardRoiList = _context.OcungLaptops.Skip((page - 1) * pageSize).Take(pageSize).ToList();

            cardRoiModel.OcungLaptopList = cardRoiList;
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
        public IActionResult Create(OcungLaptop cardRoi)
        {
            if (ModelState.IsValid)
            {
                // Add the new cardRoi to the context
                _context.OcungLaptops.Add(cardRoi);
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

            var OcungLaptops = _context.OcungLaptops.Find(id);
            if (OcungLaptops == null)
            {
                return NotFound();
            }
            return View(OcungLaptops);

        }
        [HttpGet]
        public IActionResult Edit(int id)
        {
            var OcungLaptops = _context.OcungLaptops.Find(id);

            if (OcungLaptops == null)
            {
                return NotFound();
            }

            return View(OcungLaptops);
        }

        [HttpPost]
        public IActionResult Edit(OcungLaptop OcungLaptops)
        {
            if (ModelState.IsValid)
            {
                _context.Entry(OcungLaptops).State = EntityState.Modified;
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(OcungLaptops);
        }


        public IActionResult Delete(int id)
        {
            return View();
        }
    }
}
