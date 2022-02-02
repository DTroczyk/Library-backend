using Library.BLL.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Library.Services.Interfaces
{
    public interface ILoginService
    {
        public string AuthenticateUser(string login, string password);
    }
}
