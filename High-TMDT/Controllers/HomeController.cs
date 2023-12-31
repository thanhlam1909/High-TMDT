
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
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult login()
        {
            return View();
        }

        //[HttpPost]
        //public async Task<IActionResult> Login(string usernameOrEmail, string password)
        //{
        //    // Find the user based on the provided username or email
        //    var user = _context.Users.SingleOrDefault(p => p.TenDangNhap == usernameOrEmail || p.Email == usernameOrEmail);

        //    if (user == null)
        //    {
        //        // User not found, return to the login page with an error message
        //        ViewBag.ErrorMessage = "Invalid username/email or password";
        //        return View();
        //    }

        //    if (user.MatKhau != password)
        //    {
        //        // Authentication failed, return to the login page with an error message
        //        ViewBag.ErrorMessage = "Invalid username/email or password";
        //        return View();
        //    }

        //    // Create claims for the authenticated user
        //    var claims = new List<Claim>
        //    {
        //        new Claim(ClaimTypes.Name, user.Email),
        //        // Add roles or other claims as needed
        //    };

        //    // Create a ClaimsIdentity
        //    var claimsIdentity = new ClaimsIdentity(
        //        claims, CookieAuthenticationDefaults.AuthenticationScheme);

        //    // Create a ClaimsPrincipal
        //    var claimsPrincipal = new ClaimsPrincipal(claimsIdentity);

        //    // Sign in the user
        //    await HttpContext.SignInAsync(claimsPrincipal);

        //    // Example: Using TempData to store a message for the next request
        //    TempData["Message"] = "Login successful";

        //    // Redirect to the home page
        //    return RedirectToAction("Index", "Home");
        //}

        //    public IActionResult Register()
        //    {
        //        return View();
        //    }

    }
}