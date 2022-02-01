using Library.ViewModels.DTOs;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Library.Services.Interfaces
{
    public interface IRegisterService
    {
        public string Register(UserRegistrationDto userDto);
    }
}
