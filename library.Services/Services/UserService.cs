using AutoMapper;
using Library.BLL.Entities;
using Library.DAL.EF;
using Library.Services.Interfaces;
using Library.ViewModels.VMs;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace Library.Services.Services
{
    public class UserService : BaseService, IUserService
    {
        private readonly IHttpContextAccessor _httpContext;
        private readonly IMapper _mapper;

        public UserService(ApplicationDbContext dbContext, IHttpContextAccessor httpContext, IMapper mapper) : base(dbContext)
        {
            _httpContext = httpContext;
            _mapper = mapper;
        }

        public async Task<UserVm> GetUser()
        {
            var identity = _httpContext.HttpContext.User.Identity as ClaimsIdentity;

            if (identity != null)
            {
                IList<Claim> claims = identity.Claims.ToList();

                if (claims.Count == 0)
                {
                    throw new UnauthorizedAccessException("Access Denied.");
                }

                string login =  claims[0].Value;
                User user = await _dbContext.Users.AsNoTracking()
                    .Include(u => u.Shelves)
                    .ThenInclude(s => s.Items)
                    .FirstOrDefaultAsync(u => u.Username == login);

                UserVm userVm = _mapper.Map<UserVm>(user);

                return userVm;
            }

            throw new UnauthorizedAccessException("Access Denied.");
        }

        public Task<IEnumerable<UserVm>> GetUsers()
        {
            throw new NotImplementedException();
        }
    }
}
