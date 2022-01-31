using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Library.BLL.Entities
{
    public class Item
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Author { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        public string Title { get; set; }
        public string Photo { get; set; }
        [Required]
        public string Language { get; set; }
        public int Year { get; set; }
        [Required]
        public string PublishingHouse { get; set; }
        [Required]
        public string Type { get; set; }
        [Required]
        public string OwnerId { get; set; }
        [ForeignKey("OwnerId")]
        public User Owner { get; set; }
        public int ShelfId { get; set; }
        public Shelf Shelf { get; set; }
        public bool IsPrivate { get; set; }

        public int? MaxPlayers { get; set; }
        public int? MinAge { get; set; }
        public int? MinPlayers { get; set; }
        public string Length { get; set; }

        public int? Pages { get; set; }

        public bool IsBorrowed { get; set; }
        public bool IsToLet { get; set; }
        public int? LoanId { get; set; }
        [ForeignKey("LoanId")]
        public Loan Loan { get; set; }
        public IEnumerable<Loan> Loans { get; set; }
    }
}
