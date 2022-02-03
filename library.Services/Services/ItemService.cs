using AutoMapper;
using Library.BLL.Entities;
using Library.DAL.EF;
using Library.Services.Interfaces;
using Library.ViewModels.DTOs;
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
        private readonly IUserService _userService;

        public ItemService(ApplicationDbContext dbContext, IMapper mapper, IUserService userService) : base(dbContext)
        {
            _mapper = mapper;
            _userService = userService;
        }

        public async Task<ItemVm> AddItem(AddOrEditItemDto addItemDto)
        {
            UserVm userVm = await _userService.GetUser();

            if (userVm == null)
            {
                throw new UnauthorizedAccessException("Access Denied.");
            }

            // Validation code will be here

            Item item = _mapper.Map<Item>(addItemDto);

            item.OwnerId = userVm.Username;

            _dbContext.Items.Add(item);
            _dbContext.SaveChanges();

            item = await _dbContext.Items.FirstOrDefaultAsync(i =>
                i.OwnerId == userVm.Username &&
                i.Title == addItemDto.Title &&
                i.ShelfId == addItemDto.ShelfId);

            return _mapper.Map<ItemVm>(item);
        }

        public async Task<ItemVm> EditItem(int itemId, AddOrEditItemDto editItemDto)
        {
            if (editItemDto.Id == null)
            {
                throw new ArgumentNullException("Object is wrong.");
            }

            ItemVm itemVm = await GetItem(itemId);

            UserVm userVm = await _userService.GetUser();

            if (userVm == null || userVm.Username != itemVm.OwnerId)
            {
                throw new UnauthorizedAccessException("Access Denied.");
            }

            // Validation will be here

            Item item = _mapper.Map<Item>(editItemDto);
            item.OwnerId = userVm.Username;

            _dbContext.Items.Update(item);
            _dbContext.SaveChanges();

            itemVm = await GetItem(itemId);

            return itemVm;
        }

        public async Task<ItemVm> GetItem(int id)
        {
            var item = await _dbContext.Items.AsNoTracking().FirstOrDefaultAsync(i => i.Id == id);

            if (item == null)
            {
                throw new KeyNotFoundException("Item was not found.");
            }

            var itemVm = _mapper.Map<ItemVm>(item);

            return itemVm;
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
