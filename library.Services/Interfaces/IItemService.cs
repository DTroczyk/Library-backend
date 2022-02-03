using Library.BLL.Entities;
using Library.ViewModels.DTOs;
using Library.ViewModels.VMs;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Library.Services.Interfaces
{
    public interface IItemService
    {
        public Task<ItemVm> AddItem(AddOrEditItemDto addItemDto);
        public Task<ItemVm> EditItem(int itemId, AddOrEditItemDto editItemDto);
        public Task<ItemVm> GetItem(int id);
        public Task<IEnumerable<ItemVm>> GetItems();
        public Task<bool> RemoveItem(int id);
    }
}
