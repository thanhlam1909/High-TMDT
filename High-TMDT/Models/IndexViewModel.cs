using High_TMDT.Data;

namespace High_TMDT.Models
{
    public class IndexViewModel
    {
        public List<Index_Models> CategoriesWithBrands { get; set; }
        public List<High_TMDT.Data.LoaiSanPham> LoaiSanPhamList { get; set; }
        public List<High_TMDT.Data.HangSanPham> HangSanPhamList { get; set; }
    }
}
