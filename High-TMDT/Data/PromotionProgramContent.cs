using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class PromotionProgramContent
    {
        public int Id { get; set; }
        public int? IdchuongTrinhKhuyenMai { get; set; }
        public string? NoiDung { get; set; }
        public string? ThuTuNoiDung { get; set; }
        public string? ImageUrl { get; set; }
        public int? ThuTuAnh { get; set; }
        public string? Video { get; set; }
        public int? ThuTuVideo { get; set; }

        public virtual PromotionProgram? IdchuongTrinhKhuyenMaiNavigation { get; set; }
    }
}
