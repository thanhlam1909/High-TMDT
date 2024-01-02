﻿using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class WirelessController : Controller
    {
        private readonly High_TMDTContext _context;
        public WirelessController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index(int page = 1)
        {
            int pageSize = 5;

            var cardRoiModel = new Wirelesses_model();

            // Get the total count of CardRois
            int totalCount = _context.Wirelesses.Count();

            // Calculate the number of pages
            int totalPages = (int)Math.Ceiling((double)totalCount / pageSize);

            // Skip and take the appropriate items for the current page
            var cardRoiList = _context.Wirelesses.Skip((page - 1) * pageSize).Take(pageSize).ToList();

            cardRoiModel.WirelessesList = cardRoiList;
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
        public IActionResult Create(Wireless cardRoi)
        {
            if (ModelState.IsValid)
            {
                // Add the new cardRoi to the context
                _context.Wirelesses.Add(cardRoi);
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

            var Wirelesses = _context.Wirelesses.Find(id);
            if (Wirelesses == null)
            {
                return NotFound();
            }
            return View(Wirelesses);

        }
        [HttpGet]
        public IActionResult Edit(string id)
        {
            var Wirelesses = _context.Wirelesses.Find(id);

            if (Wirelesses == null)
            {
                return NotFound();
            }

            return View(Wirelesses);
        }

        [HttpPost]
        public IActionResult Edit(Wireless Wirelesses)
        {
            if (ModelState.IsValid)
            {
                _context.Entry(Wirelesses).State = EntityState.Modified;
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(Wirelesses);
        }


        public IActionResult Delete(int id)
        {
            return View();
        }
    }
}
