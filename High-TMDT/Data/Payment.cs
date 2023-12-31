using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class Payment
    {
        public int Id { get; set; }
        public string? IddonHang { get; set; }
        public string? DanhSachMaKhuyenMai { get; set; }
        public int? PhiVanChuyen { get; set; }
        public string? PhuongThucThanhToan { get; set; }
        public int? TongSoTienThanhToan { get; set; }

        public virtual Order? IddonHangNavigation { get; set; }
    }
}
