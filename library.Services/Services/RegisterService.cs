using Library.BLL.Entities;
using Library.DAL.EF;
using Library.Services.Interfaces;
using Library.ViewModels.DTOs;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Library.Services.Services
{
    public class RegisterService : BaseService, IRegisterService
    {
        public RegisterService(ApplicationDbContext dbContext) : base(dbContext)
        {
        }

        public string Register(UserRegistrationDto userDto)
        {
            userDto.Username = userDto.Username.ToLower();

            // Validation will be here

            var user = _dbContext.Users.Find(userDto.Username);
            if (user != null)
            {
                throw new Exception("Nie udało się zarejestrować. Błąd: Użytkownik już istnieje.");
            }

            user = new User()
            {
                Username = userDto.Username,
                Email = userDto.Email,
                Name = userDto.Name,
                Surname = userDto.Surname,
                Active = false,
                PasswordHash = BCrypt.Net.BCrypt.HashPassword(userDto.Password)
        };

            // Set Password Hash will be here

            var firstShelf = new Shelf()
            {
                Id = 1,
                Name = "Główna półka",
                Description = "Pierwsza domyślna półka na książki i gry planszowe.",
                OwnerId = userDto.Username
            };

            try
            {
                _dbContext.Users.Add(user);
                _dbContext.Shelves.Add(firstShelf);
                _dbContext.SaveChanges();
            }
            catch (Exception ex)
            {
                var message = "Nie udało się zarejestrować. Błąd: " + ex.Message;
                throw new Exception(message);
            }

            return "Użytkownik zarejestrowany.";
        }
    }
}
