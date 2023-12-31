using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using High_TMDT.Models;
using High_TMDT.Data;
using System.Security.Cryptography;
using System.Text;
using System.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace High_TMDT.Controllers
{
    public class SignUpController : Controller
    {
        private readonly High_TMDTContext _context;

        public SignUpController(High_TMDTContext dbContext)
        {
            _context = dbContext;
        }

        public IActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public IActionResult SignUp()
        {
            return View();
        }
        [HttpPost]
        public IActionResult SignUp(SignUp model, IFormFile FileName)
        {
            // Create a new user object
            User newUser = new User
            {
                Id = Guid.NewGuid().ToString(),
                TenNguoiDung = model.User.TenNguoiDung,
                TenDangNhap = model.User.TenNguoiDung,
                MatKhau = model.User.MatKhau,
                MatKhauNhapLai = model.User.MatKhauNhapLai,
                GioiTinh = model.User.GioiTinh,
                Email = model.User.Email, // Thay bằng giá trị cố định cho Email
                HieuLuc = 1,
                LoaiNguoiDung = "User",
                SoDienThoai = model.User.SoDienThoai, // Thay bằng giá trị cố định cho số điện thoại
                // You may want to handle the image upload logic here
            };

            UserAddress userAddress = new UserAddress
            {
                IdnguoiDung = newUser.Id,
                DiaChiNha = model.UserAddress.DiaChiNha, // Fix the typo here
                PhuongXa = model.UserAddress.PhuongXa, // Fix the typo here
                ThanhPhoTinh = model.UserAddress.ThanhPhoTinh,
                QuanHuyen = model.UserAddress.QuanHuyen,
                QuocGia = model.UserAddress.QuocGia
            };
            UploadHinh uploadHinh = new UploadHinh();
            string newImagePath = uploadHinh.Upload(FileName, "Hinh"); // "uploads" là tên thư mục lưu ảnh
            newUser.Anh = newImagePath;
            _context.Users.Add(newUser);
            _context.UserAddresses.Add(userAddress);

            _context.SaveChanges();
            return RedirectToAction("Index", "Home");
        }


    }
}
