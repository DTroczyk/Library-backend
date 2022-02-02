using System;
using System.Collections.Generic;
using System.Text;

namespace Library.ViewModels.VMs
{
    public class UserVm
    {
        public string Username { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public IEnumerable<ShelfVm> Shelves { get; set; }
    }
}
