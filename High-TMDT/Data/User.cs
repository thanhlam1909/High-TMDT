using System;
using System.Collections.Generic;

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
        public string? TenNguoiDung { get; set; }
        public string? TenDangNhap { get; set; }
        public string? MatKhau { get; set; }
        public string? MatKhauNhapLai { get; set; }
        public string? Anh { get; set; }
        public string? GioiTinh { get; set; }
        public string? Email { get; set; }
        public int? HieuLuc { get; set; }
        public string? LoaiNguoiDung { get; set; }
        public int? SoDienThoai { get; set; }

        public virtual ICollection<Cart> Carts { get; set; }
        public virtual ICollection<FavoriteProduct> FavoriteProducts { get; set; }
        public virtual ICollection<Review> Reviews { get; set; }
        public virtual ICollection<UserAddress> UserAddresses { get; set; }
        public virtual ICollection<ViewedProduct> ViewedProducts { get; set; }
    }
}
