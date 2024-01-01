using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq; // Thêm dòng này
using System.Net;

namespace High_TMDT.Controllers
{
    //[Authorize(Roles = "Admin")]
    public class ManageController : Controller
    {
        private readonly High_TMDTContext _context;

        public ManageController(High_TMDTContext dbContext)
        {
            _context = dbContext;
        }

        public IActionResult Index()
        {
            var signUpModel = new SignUp
            {
                UserAndAddressList = _context.Users
                .Where(u => u.UserAddresses.Any(address => address.IdnguoiDung == u.Id))
                .Select(u => new UserAndAddressViewModel
                {
                    User = u,
                    UserAddress = u.UserAddresses.FirstOrDefault(address => address.IdnguoiDung == u.Id)
                })
                .ToList()
            };
            if (User.Identity.IsAuthenticated)
            {
                string username = User.Identity.Name;

                var user = _context.Users.FirstOrDefault(u => u.Email == username);
                
                string tennguoidung = user.TenNguoiDung;
                ViewData["DisplayName"] = tennguoidung;  
            }  
            // Ngược lại, nếu có quyền, trả về trang quản lý
            return View(signUpModel);
        }

    }
}
