using Library.BLL.Entities;
using Library.ViewModels.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Library.Services.Interfaces
{
    public interface ILoginService
    {
        public LoginUserDto AuthenticateUser(string login, string password);
    }
}
