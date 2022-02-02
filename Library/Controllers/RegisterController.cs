using Library.BLL.Entities;
using Library.Services.Interfaces;
using Library.ViewModels.DTOs;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Library.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class RegisterController : Controller
    {
        private readonly IRegisterService _registerService;

        public RegisterController(IRegisterService registerService)
        {
            _registerService = registerService;
        }

        [HttpPost]
        public IActionResult Register([FromBody]UserRegistrationDto userDto)
        {
            try
            {
                var message = _registerService.Register(userDto);
                return Ok(new { message = message });
            }
            catch (Exception ex)
            {
                return Conflict(new { error = ex.Message });
            }
        }
    }
}
