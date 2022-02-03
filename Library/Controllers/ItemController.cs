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

        // GET: ItemsController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ItemsController/Create
        public ActionResult Create()
        {
            return View();
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

        // GET: ItemsController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ItemsController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
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
