using E_CommerceCoreMVC.Models;
using E_CommerceCoreMVC.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;

namespace E_CommerceCoreMVC.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    [Route("Admin/InventoryTransaction")]
    public class InventoryTransactionController : Controller
    {
        private readonly DataContext _context;

        public InventoryTransactionController(DataContext context)
        {
            _context = context;
        }
        // GET: InventoryTransaction
        [Route("Index")]
        public async Task<IActionResult> Index(string status = "Pending")
        {
            var transactions = await _context.InventoryTransactions
                .Include(t => t.Product)
                .Where(t => t.Status == status)
                .ToListAsync();
            return View(transactions);
        }

        // GET: InventoryTransaction/Create
        [Route("Create")]
        public async Task<IActionResult> Create()
        {
            ViewBag.Products = await _context.Products.ToListAsync();
            return View();
        }

        // POST: InventoryTransaction/Create
        [HttpPost]
        [Route("Create")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(InventoryTransaction transaction)
        {
            if (ModelState.IsValid)
            {
                transaction.Status = "Pending";
                _context.Add(transaction);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewBag.Products = await _context.Products.ToListAsync();
            return View(transaction);
        }

        // POST: InventoryTransaction/Approve/5
        [HttpGet]
        [Route("Approve")]
        public async Task<IActionResult> Approve()
        {
            var approvedTransactions = await _context.InventoryTransactions
                .Include(t => t.Product)
                .Where(t => t.Status == "Approved")
                .ToListAsync();

            return View(approvedTransactions);
        }


        [HttpGet]
        public async Task<IActionResult> ExportToPdf(int id)
        {
            var transaction = await _context.InventoryTransactions
                .Include(t => t.Product)
                .FirstOrDefaultAsync(t => t.Id == id);

            if (transaction == null)
                return NotFound();

            using (MemoryStream stream = new MemoryStream())
            {
                Document document = new Document(PageSize.A4);
                PdfWriter.GetInstance(document, stream);
                document.Open();

                // Font setup
                var titleFont = FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 16);
                var normalFont = FontFactory.GetFont(FontFactory.HELVETICA, 12);

                // Title
                document.Add(new Paragraph("Phiếu " + transaction.TransactionType + " Kho", titleFont));
                document.Add(new Paragraph("\n"));

                // Nội dung
                document.Add(new Paragraph($"- Mã giao dịch: {transaction.Id}", normalFont));
                document.Add(new Paragraph($"- Sản phẩm: {transaction.Product.Name}", normalFont));
                document.Add(new Paragraph($"- Số lượng: {transaction.Quantity}", normalFont));
                document.Add(new Paragraph($"- Loại giao dịch: {transaction.TransactionType}", normalFont));
                document.Add(new Paragraph($"- Trạng thái: {transaction.Status}", normalFont));
                document.Add(new Paragraph($"- Ngày tạo: {transaction.CreatedAt:yyyy-MM-dd HH:mm}", normalFont));
                document.Add(new Paragraph($"- Người duyệt: {transaction.ApprovedBy}", normalFont));

                document.Close();

                return File(stream.ToArray(), "application/pdf", $"Phieu_{transaction.TransactionType}_{transaction.Id}.pdf");
            }
        }
    }
}
