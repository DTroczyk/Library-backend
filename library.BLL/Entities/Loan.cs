using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Library.BLL.Entities
{
    public class Loan
    {
        [Key]
        public int Id { get; set; }
        public int ItemId { get; set; }
        [ForeignKey("ItemId")]
        public Item Item { get; set; }

        [Required]
        public string BorrowerId { get; set; }
        [ForeignKey("BorrowerId")]
        public User Borrower { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public DateTime? ReturnedDate { get; set; }

        public bool IsAccepted { get; set; }
    }
}
