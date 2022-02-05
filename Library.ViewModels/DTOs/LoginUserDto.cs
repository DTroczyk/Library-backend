using Library.ViewModels.VMs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Library.ViewModels.DTOs
{
    public class LoginUserDto
    {
        public string Token { get; set; }
        public UserVm UserVm { get; set; }
    }
}
