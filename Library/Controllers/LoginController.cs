using Library.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Library.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class LoginController : Controller
    {
        private readonly ILoginService _loginService;

        public LoginController(ILoginService loginService)
        {
            _loginService = loginService;
        }

        [HttpGet]
        public IActionResult Login(string login, string password)
        {
            try
            {
                var loginUserDto = _loginService.AuthenticateUser(login, password);
                return Ok(new 
                { 
                    token = loginUserDto.Token,
                    user = loginUserDto.UserVm,
                    message = "Login success."
                });
            }
            catch (Exception ex)
            {
                return Unauthorized(new { error = ex.Message });
            }
        }
    }
}
