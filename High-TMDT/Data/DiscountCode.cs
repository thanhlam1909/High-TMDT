using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class DiscountCode
    {
        public DiscountCode()
        {
            DanhSachKhuyenMais = new HashSet<DanhSachKhuyenMai>();
            DanhSachSanPhamKhuyenMais = new HashSet<DanhSachSanPhamKhuyenMai>();
        }

        public int Id { get; set; }
        public string? MaGiamGia { get; set; }
        public string? DieuKienKhuyenMai { get; set; }
        public DateTime? NgayBatDau { get; set; }
        public DateTime? NgayHetHan { get; set; }
        public int? TienGiamGia { get; set; }
        public int? SoLuongKhuyenMai { get; set; }

        public virtual ICollection<DanhSachKhuyenMai> DanhSachKhuyenMais { get; set; }
        public virtual ICollection<DanhSachSanPhamKhuyenMai> DanhSachSanPhamKhuyenMais { get; set; }
    }
}
