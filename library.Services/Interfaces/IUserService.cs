using Library.ViewModels.VMs;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Library.Services.Interfaces
{
    public interface IUserService
    {
        public Task<UserVm> GetUser();
        public Task<IEnumerable<UserVm>> GetUsers();
    }
}
