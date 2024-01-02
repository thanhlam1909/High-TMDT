using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class CongKetNoiController : Controller
    {
        private readonly High_TMDTContext _context;
        public CongKetNoiController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index(int page = 1)
        {
            int pageSize = 5;

            var cardRoiModel = new Cong_ket_noi_model();

            // Get the total count of CardRois
            int totalCount = _context.CongKetNois.Count();

            // Calculate the number of pages
            int totalPages = (int)Math.Ceiling((double)totalCount / pageSize);

            // Skip and take the appropriate items for the current page
            var cardRoiList = _context.CongKetNois.Skip((page - 1) * pageSize).Take(pageSize).ToList();

            cardRoiModel.CongKetNoiList = cardRoiList;
            cardRoiModel.TotalPages = totalPages;

            // Set ViewBag.Page
            ViewBag.Page = page;

            return View(cardRoiModel);
        }


        public IActionResult Details(int id)
        {

            var CongKetNois = _context.CongKetNois.Find(id);
            if (CongKetNois == null)
            {
                return NotFound();
            }
            return View(CongKetNois);

        }
        [HttpGet]
        public IActionResult Edit(int id)
        {
            var CongKetNois = _context.CongKetNois.Find(id);

            if (CongKetNois == null)
            {
                return NotFound();
            }

            return View(CongKetNois);
        }

        [HttpPost]
        public IActionResult Edit(CardDoHoaTichHop CongKetNois)
        {
            if (ModelState.IsValid)
            {
                _context.Entry(CongKetNois).State = EntityState.Modified;
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(CongKetNois);
        }


        public IActionResult Delete(int id)
        {
            return View();
        }
        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(CongKetNoi cardRoi)
        {
            if (ModelState.IsValid)
            {
                // Add the new cardRoi to the context
                _context.CongKetNois.Add(cardRoi);
                // Save changes to the database
                _context.SaveChanges();

                // Redirect to the Index action after successful creation
                return RedirectToAction("Index");
            }

            // If the model state is not valid, return to the Create view with the entered data
            return View(cardRoi);
        }
    }
}
