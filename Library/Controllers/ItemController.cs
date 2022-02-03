using Library.BLL.Entities;
using Library.Services.Interfaces;
using Library.ViewModels.DTOs;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Library.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ItemController : Controller
    {
        private readonly IItemService _itemService;

        public ItemController(IItemService itemService)
        {
            _itemService = itemService;
        }

        // GET: item
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Item>>> GetItems()
        {
            var items = await _itemService.GetItems();
            return Ok(items);
        }

        // GET: item/2
        [HttpGet]
        [Route("{itemId}")]
        public  ActionResult<Item> GetItem(int itemId)
        {
            var item = _itemService.GetItem(itemId);
            return Ok(item);
        }

        // POST: item/add
        [Route("add")]
        [HttpPost]
        public async Task<ActionResult> AddItem([FromBody]AddOrEditItemDto addItemDto)
        {
            try
            {
                var newItem = await _itemService.AddItem(addItemDto);
                return Created($"item/{newItem.Id}", new { item = newItem });
            }
            catch (Exception ex)
            {
                return Conflict(new { error = ex.Message });
            }
        }

        // PUT: item/edit/7
        [Route("edit/{itemId}")]
        [HttpPut]
        public async Task<ActionResult> EditItem([FromRoute] int itemId, [FromBody] AddOrEditItemDto editItemDto)
        {
            try
            {
                var editedItem = await _itemService.EditItem(itemId, editItemDto);
                return Created($"item/{itemId}", new { item = editedItem });
            }
            catch (Exception ex)
            {
                return Conflict(new { error = ex.Message });
            }
        }

        // GET: ItemsController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ItemsController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
