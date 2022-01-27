using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Library.BLL.Entities
{
    public class User
    {
        [Key]
        public string Username { get; set; }
        public string Email { get; set; }

        public string Name { get; set; }
        public string Surname { get; set; }

        public bool Active { get; set; }
        public string PasswordHash { get; set; }

        public IEnumerable<Item> Items { get; set; }
    }
}
