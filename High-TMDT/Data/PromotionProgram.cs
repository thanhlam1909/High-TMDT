using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class PromotionProgram
    {
        public PromotionProgram()
        {
            PromotionProgramContents = new HashSet<PromotionProgramContent>();
        }

        public int Id { get; set; }
        public string? TenChuongTrinh { get; set; }
        public DateTime? NgayBatDau { get; set; }
        public DateTime? NgayKetThuc { get; set; }

        public virtual ICollection<PromotionProgramContent> PromotionProgramContents { get; set; }
    }
}
