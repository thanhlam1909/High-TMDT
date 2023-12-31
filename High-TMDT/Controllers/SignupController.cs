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
            try
            {
                if (FileName == null)
                {
                    ModelState.AddModelError("User.Anh", "Vui lòng tải lên một tệp.");
                    return View("Index", model);
                }
                // Kiểm tra xem tên đăng nhập đã được sử dụng chưa
                if (_context.Users.Any(u => u.TenDangNhap == model.User.TenDangNhap))
                {
                    ModelState.AddModelError("User.TenDangNhap", "Tên đăng nhập này đã được sử dụng. Vui lòng chọn tên khác.");
                    return View("Index", model);
                }

                // Kiểm tra xem email đã được đăng ký chưa
                if (_context.Users.Any(u => u.Email == model.User.Email))
                {
                    ModelState.AddModelError("User.Email", "Email này đã được đăng ký. Vui lòng sử dụng địa chỉ email khác.");
                    return View("Index", model);
                }
                // Tạo đối tượng người dùng mới
                User newUser = new User
                {
                    Id = Guid.NewGuid().ToString(),
                    TenNguoiDung = model.User.TenNguoiDung,
                    TenDangNhap = model.User.TenDangNhap,
                    MatKhau = model.User.MatKhau,
                    MatKhauNhapLai = model.User.MatKhauNhapLai,
                    GioiTinh = model.User.GioiTinh,
                    Email = model.User.Email,
                    HieuLuc = 1,
                    LoaiNguoiDung = "User",
                    SoDienThoai = model.User.SoDienThoai,
                };

                UserAddress userAddress = new UserAddress
                {
                    IdnguoiDung = newUser.Id,
                    DiaChiNha = model.UserAddress.DiaChiNha,
                    PhuongXa = model.UserAddress.PhuongXa,
                    ThanhPhoTinh = model.UserAddress.ThanhPhoTinh,
                    QuanHuyen = model.UserAddress.QuanHuyen,
                    QuocGia = model.UserAddress.QuocGia
                };

                UploadHinh uploadHinh = new UploadHinh();
                string newImagePath = uploadHinh.Upload(FileName, "Hinh");

                newUser.Anh = newImagePath;

                _context.Users.Add(newUser);
                _context.UserAddresses.Add(userAddress);

                _context.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            catch (Exception ex)
            {
                // Ghi nhật ký ngoại lệ hoặc xử lý theo cách cần thiết
                ModelState.AddModelError("", "Đã xảy ra lỗi khi tạo người dùng. Vui lòng thử lại.");
            }

            // Nếu có ngoại lệ xảy ra, quay lại trang đăng ký với thông báo lỗi
            return View("Index", model);
        }
    }
}
