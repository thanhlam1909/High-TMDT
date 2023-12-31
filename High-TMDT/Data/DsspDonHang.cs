using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class DsspDonHang
    {
        public string MaDsspDh { get; set; } = null!;
        public string? MaSp { get; set; }
        public int? SoLuong { get; set; }
        public string? MaDh { get; set; }
        public int? Gia { get; set; }

        public virtual Order? MaDhNavigation { get; set; }
        public virtual SanPhamLaptop? MaSpNavigation { get; set; }
    }
}
