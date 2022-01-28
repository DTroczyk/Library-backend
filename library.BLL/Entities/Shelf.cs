using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Library.BLL.Entities
{
    public class Shelf
    {
        [Key]
        public int Id { get; set; }
        public string OwnerId { get; set; }
        public User Owner { get; set; }
        [Required]
        public string Name { get; set; }
        public string Description { get; set; }

        public IEnumerable<Item> Items { get; set; }
    }
}
