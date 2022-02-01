﻿using Library.BLL.Entities;
using Library.ViewModels.VMs;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Library.Services.Interfaces
{
    public interface IItemService
    {
        public Task<IEnumerable<ItemVm>> GetItems();
    }
}