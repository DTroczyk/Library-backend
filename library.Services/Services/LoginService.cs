using AutoMapper;
using Library.BLL.Entities;
using Library.DAL.EF;
using Library.Services.Interfaces;
using Library.ViewModels.DTOs;
using Library.ViewModels.VMs;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;

namespace Library.Services.Services
{
    public class LoginService : BaseService, ILoginService
    {
        private readonly IConfiguration _configuration;
        private readonly IMapper _mapper;

        public LoginService(ApplicationDbContext dbContext, IConfiguration configuration, IMapper mapper) : base(dbContext)
        {
            _configuration = configuration;
            _mapper = mapper;
        }

        public LoginUserDto AuthenticateUser(string login, string password)
        {
            var user = IsValidUser(login, password);

            if (user == null)
            {
                throw new Exception("Access Denied.");
            }

            var userVm = _mapper.Map<UserVm>(user);
            string token = GenerateJSONWebToken(user);

            var result = new LoginUserDto() {
                Token = token,
                UserVm = userVm
            };

            return result;
        }

        private string GenerateJSONWebToken(User user)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            var claims = new[]
            {
                new Claim(JwtRegisteredClaimNames.Sub, user.Username),
                new Claim(JwtRegisteredClaimNames.Email, user.Email),
                new Claim("Name", user.Name),
                new Claim("Surname", user.Surname)
            };

            var token = new JwtSecurityToken(_configuration["Jwt:Issuer"],
                _configuration["Jwt:Issuer"],
                claims,
                expires: DateTime.Now.AddMinutes(120),
                signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        private User IsValidUser(string login, string password)
        {
            var user = _dbContext.Users.Find(login);

            if (user == null)
            {
                return null;
            }

            if (BCrypt.Net.BCrypt.Verify(password, user.PasswordHash))
            {
                return user;
            }

            return null;
        }
    }
}
