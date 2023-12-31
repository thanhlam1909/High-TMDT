using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class SanPhamLaptop
    {
        public SanPhamLaptop()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
            DanhSachSanPhamKhuyenMais = new HashSet<DanhSachSanPhamKhuyenMai>();
            DsspDonHangs = new HashSet<DsspDonHang>();
            FavoriteProducts = new HashSet<FavoriteProduct>();
            GioiThieuSanPhamLaptops = new HashSet<GioiThieuSanPhamLaptop>();
            HinhAnhPhuSanPhamLaptops = new HashSet<HinhAnhPhuSanPhamLaptop>();
            ProductListOders = new HashSet<ProductListOder>();
            ProductListsCarts = new HashSet<ProductListsCart>();
            Reviews = new HashSet<Review>();
            ViewedProducts = new HashSet<ViewedProduct>();
        }

        public string Id { get; set; } = null!;
        public string TenSanPham { get; set; } = null!;
        public int? ThuTuSanPham { get; set; }
        public string? AnhChinh { get; set; }
        public int? Gia { get; set; }
        public int? GiaGiam { get; set; }
        public int? IdHangLoaiSanPham { get; set; }
        public int? MaDongSanPham { get; set; }
        public DateTime? NgayThemSanPham { get; set; }
        public string? TrangThaiSp { get; set; }

        public virtual HangSanXuatLoaiSanPham? IdHangLoaiSanPhamNavigation { get; set; }
        public virtual DongSanPham? MaDongSanPhamNavigation { get; set; }
        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
        public virtual ICollection<DanhSachSanPhamKhuyenMai> DanhSachSanPhamKhuyenMais { get; set; }
        public virtual ICollection<DsspDonHang> DsspDonHangs { get; set; }
        public virtual ICollection<FavoriteProduct> FavoriteProducts { get; set; }
        public virtual ICollection<GioiThieuSanPhamLaptop> GioiThieuSanPhamLaptops { get; set; }
        public virtual ICollection<HinhAnhPhuSanPhamLaptop> HinhAnhPhuSanPhamLaptops { get; set; }
        public virtual ICollection<ProductListOder> ProductListOders { get; set; }
        public virtual ICollection<ProductListsCart> ProductListsCarts { get; set; }
        public virtual ICollection<Review> Reviews { get; set; }
        public virtual ICollection<ViewedProduct> ViewedProducts { get; set; }
    }
}
