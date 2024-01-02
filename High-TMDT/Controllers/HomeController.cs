
//using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using System.Security.Claims;
using High_TMDT.Data;
using System.Data;
using Twilio.Http;
using Twilio.TwiML.Voice;

namespace High_TMDT.Controllers
{
    public class HomeController : Controller
    {
        private readonly High_TMDTContext _context;
        public HomeController(High_TMDTContext dbContext)
        {
            _context = dbContext;
        }
        public IActionResult Index()
        {
            var viewModel = new IndexViewModel();

            var hangSanPhamList = _context.HangSanPhams.ToList();
            viewModel.HangSanPhamList = hangSanPhamList;

            // Get the list of LoaiSanPham
            var loaiSanPhamList = _context.LoaiSanPhams.ToList();
            viewModel.LoaiSanPhamList = loaiSanPhamList;


            return View(viewModel);
        }
        public IActionResult Privacy()
        {
            return View();
        }
    }
}