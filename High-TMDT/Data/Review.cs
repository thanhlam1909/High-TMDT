using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class Review
    {
        public string Id { get; set; } = null!;
        public string? IdnguoiDung { get; set; }
        public string? IdsanPham { get; set; }
        public int? DiemDanhGia { get; set; }
        public string? NoiDungDanhGia { get; set; }

        public virtual User? IdnguoiDungNavigation { get; set; }
        public virtual SanPhamLaptop? IdsanPhamNavigation { get; set; }
    }
}
