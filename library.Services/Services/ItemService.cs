using AutoMapper;
using Library.BLL.Entities;
using Library.DAL.EF;
using Library.Services.Interfaces;
using Library.ViewModels.VMs;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library.Services.Services
{
    public class ItemService : BaseService, IItemService
    {
        private readonly IMapper _mapper;

        public ItemService(ApplicationDbContext dbContext, IMapper mapper) : base(dbContext)
        {
            _mapper = mapper;
        }

        public async Task<IEnumerable<ItemVm>> GetItems()
        {
            var itemEntities = await _dbContext.Items
                .Include(i => i.Owner)
                .Include(i => i.Shelf)
                .Where(i => (!i.IsPrivate && !i.IsBorrowed && i.IsToLet)).ToListAsync();

            var itemVmEntities = _mapper.Map<IEnumerable<ItemVm>>(itemEntities);

            return itemVmEntities;
        }

    }
}
