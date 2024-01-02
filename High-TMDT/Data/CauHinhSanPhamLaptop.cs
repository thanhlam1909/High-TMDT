using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class CauHinhSanPhamLaptop
    {
        public CauHinhSanPhamLaptop()
        {
            CongKetNoiCuaSanPhams = new HashSet<CongKetNoiCuaSanPham>();
        }

        public int Id { get; set; }
        public string? IdSanPham { get; set; }
        public string? IdBoViXuLy { get; set; }
        public int? DungLuongRam { get; set; }
        public int? Idocung { get; set; }
        public int? SoLuongOcung { get; set; }
        public int? SoLuongRam { get; set; }
        public int? Mau { get; set; }
        public string? IdRam { get; set; }
        public int? IdKichThuocManHinh { get; set; }
        public string? KieuBanPhim { get; set; }
        public string? Chuot { get; set; }
        public string? Camera { get; set; }
        public string? Loa { get; set; }
        public string? KieuPin { get; set; }
        public string? SacPin { get; set; }
        public string? TrongLuong { get; set; }
        public int? Tencardroi { get; set; }
        public int? Tencardtichhop { get; set; }

        public virtual BoViXuLyLaptop? IdBoViXuLyNavigation { get; set; }
        public virtual ManHinhLaptop? IdKichThuocManHinhNavigation { get; set; }
        public virtual Ram? IdRamNavigation { get; set; }
        public virtual SanPhamLaptop? IdSanPhamNavigation { get; set; }
        public virtual OcungLaptop? IdocungNavigation { get; set; }
        public virtual Mau? MauNavigation { get; set; }
        public virtual CardRoi? TencardroiNavigation { get; set; }
        public virtual CardDoHoaTichHop? TencardtichhopNavigation { get; set; }
        public virtual ICollection<CongKetNoiCuaSanPham> CongKetNoiCuaSanPhams { get; set; }
    }
}
