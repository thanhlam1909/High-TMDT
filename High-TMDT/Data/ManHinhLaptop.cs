using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class ManHinhLaptop
    {
        public ManHinhLaptop()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
        }

        public int Id { get; set; }
        public double? KichThuoc { get; set; }
        public string? DoPhanGiai { get; set; }
        public string? CongNgheManHinh { get; set; }
        public int? TanSo { get; set; }
        public int? DoSang { get; set; }
        public string? LoaiManHinh { get; set; }
        public string? TyLeKhungHinh { get; set; }

        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
    }
}
