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
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Login(User user)
        {
            // Xác thực thông tin người dùng (bạn có thể kiểm tra trong cơ sở dữ liệu)
            var validUser = _context.Users.SingleOrDefault(u => u.TenDangNhap == user.TenDangNhap );

            if (validUser != null && validUser.MatKhau == user.MatKhau)
            {
                // Tạo claims cho người dùng đã xác thực
                var claims = new List<Claim>
        {
            new Claim(ClaimTypes.Name, validUser.Email),
            // Thêm roles hoặc các claims khác nếu cần
        };

                // Tạo ClaimsIdentity
                var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

                // Tạo ClaimsPrincipal
                var claimsPrincipal = new ClaimsPrincipal(claimsIdentity);

                // Đăng nhập người dùng
                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, claimsPrincipal);

                // Ví dụ: Sử dụng TempData để lưu trữ thông báo cho request tiếp theo
                TempData["Message"] = "Đăng nhập thành công";

                return RedirectToAction("Index", "Home"); // Chuyển hướng đến trang chủ sau khi đăng nhập thành công
            }
            else
            {
                // Xác thực thất bại, chuyển hướng về trang đăng nhập với thông báo lỗi
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
