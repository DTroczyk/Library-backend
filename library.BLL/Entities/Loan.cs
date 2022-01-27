using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Library.BLL.Entities
{
    public class Loan
    {
        [Key]
        public ulong Id { get; set; }
        public ulong ItemId { get; set; }
        public Item Item { get; set; }

        [Required]
        public string BorrowerId { get; set; }
        public User Borrower { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public DateTime? ReturnedDate { get; set; }

        public bool IsAccepted { get; set; }
    }
}
