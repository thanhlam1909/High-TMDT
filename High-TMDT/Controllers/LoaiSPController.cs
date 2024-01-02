using High_TMDT.Data;
using High_TMDT.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace High_TMDT.Controllers
{
    public class LoaiSPController : Controller
    {
        private readonly High_TMDTContext _context;
        public LoaiSPController(High_TMDTContext dbContext)
        {

            _context = dbContext;
        }
        public IActionResult Index()
        {
            var loaisp_model = new LoaiSP_Model();


            // Get the list of LoaiSanPham
            var loaiSanPhamList = _context.LoaiSanPhams.ToList();
            loaisp_model.LoaiSanPhamList = loaiSanPhamList;


            return View(loaisp_model);

        }
        public IActionResult Detail_loaisp(int IdLoaiSp)
        {
            var loaisp = _context.LoaiSanPhams.Find(IdLoaiSp);
            if (loaisp == null)
            {
                return NotFound();
            }
            return View(loaisp);
        }
        [HttpGet]
        public IActionResult Edit_loaisp(int idLoaiSp)
        {
            var loaisp = _context.LoaiSanPhams.Find(idLoaiSp);
            if (loaisp == null)
            {
                return NotFound();
            }
            return View(loaisp);
        }

        [HttpPost]
        public IActionResult Edit_loaisp(LoaiSanPham loaisp)
        {
            try
            {
                _context.Entry(loaisp).State = EntityState.Modified;
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            catch (DbUpdateConcurrencyException)
            {
                // Handle concurrency issues
                return View(loaisp);
            }
            catch (Exception)
            {
                // Handle other exceptions
                return View(loaisp);
            }
        }
        public IActionResult Delete_loaisp(int IdLoaiSp)
        {
            var loaisp = _context.LoaiSanPhams.Find(IdLoaiSp);
            if (loaisp == null)
            {
                return NotFound();
            }
            return View(loaisp);
        }
    }
}
