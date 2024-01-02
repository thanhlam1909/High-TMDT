using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;

using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace High_TMDT.Controllers
{
    public class LoginController : Controller
    {
        private readonly High_TMDTContext _context;

        public LoginController(High_TMDTContext dbContext)
        {
            _context = dbContext;
        }
        [HttpGet("/dang-nhap")]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost("/dang-nhap")]
        public async Task<IActionResult> Login(User user)
        {
            var validUser = _context.Users.SingleOrDefault(u => u.TenDangNhap == user.TenDangNhap);

            if (validUser != null && validUser.MatKhau == user.MatKhau)
            {
                var claims = new List<Claim>
        {
            new Claim(ClaimTypes.Name, validUser.Email),
            new Claim(ClaimTypes.Role, validUser.LoaiNguoiDung ?? "User"),
            // Thêm các claims khác nếu cần
        };

                var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
                var claimsPrincipal = new ClaimsPrincipal(claimsIdentity);

                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, claimsPrincipal);

                TempData["Message"] = "Đăng nhập thành công";

                if (validUser.LoaiNguoiDung == "Admin")
                {
                    return RedirectToAction("Index", "Manage");
                }
                else
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            else
            {
                ModelState.AddModelError(string.Empty, "Cố gắng đăng nhập không hợp lệ");
                return View("Index");
            }
        }

        public IActionResult Logout()
        {
             HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);

            // Chuyển hướng đến trang chủ
            return RedirectToAction("Index", "Home");
        }


    }
}
