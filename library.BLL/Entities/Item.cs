using System;
using System.Collections.Generic;
using System.Text;

namespace Library.BLL.Entities
{
    public class Item
    {
        public string Author { get; set; }
        public string Description { get; set; }
        public ulong Id { get; set; }
        public string Title { get; set; }
        public string Photo { get; set; }
        public string Language { get; set; }
        public int Year { get; set; }
        public string PublishingHouse { get; set; }
        public string Type { get; set; }
        public string OwnerId { get; set; }
        public User Owner { get; set; }
        public int ShelfId { get; set; }
        public Shelf Shefl { get; set; }
        public bool IsPrivate { get; set; }

        public int MaxPlayers { get; set; }
        public int MinAge { get; set; }
        public int MinPlayers { get; set; }
        public string Length { get; set; }

        public int Pages { get; set; }

        public bool IsBorrowed { get; set; }
        public bool IsToLet { get; set; }
        public string BorrowerId { get; set; }
        public User Borrower { get; set; }
    }
}
