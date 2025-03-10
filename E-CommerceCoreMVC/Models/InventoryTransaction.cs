namespace E_CommerceCoreMVC.Models
{
    public class InventoryTransaction
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public string TransactionType { get; set; } // "Import" hoặc "Export"
        public string Status { get; set; } = "Pending"; // "Pending", "Approved", "Rejected"
        public DateTime CreatedAt { get; set; } = DateTime.Now;
        public DateTime? ApprovedAt { get; set; }
        public string? ApprovedBy { get; set; }

        // Navigation property
        public virtual ProductModel Product { get; set; }
    }
}
