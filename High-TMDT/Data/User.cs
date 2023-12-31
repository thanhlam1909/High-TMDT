using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace High_TMDT.Data
{
    public partial class User
    {
        public User()
        {
            Carts = new HashSet<Cart>();
            FavoriteProducts = new HashSet<FavoriteProduct>();
            Reviews = new HashSet<Review>();
            UserAddresses = new HashSet<UserAddress>();
            ViewedProducts = new HashSet<ViewedProduct>();
        }

        public string Id { get; set; } = null!;
        [Required(ErrorMessage = "Tên người dùng là trường bắt buộc.")]
        public string TenNguoiDung { get; set; }

        [Required(ErrorMessage = "Tên đăng nhập là trường bắt buộc.")]
        public string TenDangNhap { get; set; }

        [Required(ErrorMessage = "Mật khẩu là trường bắt buộc.")]
        public string MatKhau { get; set; }
        [Required(ErrorMessage = "Mật khẩu Nhập Lại là trường bắt buộc.")]

        [Compare("MatKhau", ErrorMessage = "Mật khẩu nhập lại không khớp.")]
        public string MatKhauNhapLai { get; set; }
        public string? Anh { get; set; }
        public string? GioiTinh { get; set; }
        [Required(ErrorMessage = "Email là trường bắt buộc.")]
        [EmailAddress(ErrorMessage = "Địa chỉ email không hợp lệ.")]
        public string Email { get; set; }

        public int HieuLuc { get; set; }

        [Required(ErrorMessage = "Loại người dùng là trường bắt buộc.")]
        public string LoaiNguoiDung { get; set; }

        [Required(ErrorMessage = "Số điện thoại là trường bắt buộc.")]
        public int? SoDienThoai { get; set; }
        public virtual ICollection<Cart> Carts { get; set; }
        public virtual ICollection<FavoriteProduct> FavoriteProducts { get; set; }
        public virtual ICollection<Review> Reviews { get; set; }
        public virtual ICollection<UserAddress> UserAddresses { get; set; }
        public virtual ICollection<ViewedProduct> ViewedProducts { get; set; }
    }
}
