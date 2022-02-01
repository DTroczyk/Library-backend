using AutoMapper;
using Library.BLL.Entities;
using Library.ViewModels.VMs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Library
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Item, ItemVm>()
                .ForMember(dest => dest.Owner, opt => opt.MapFrom(src => 
                    src.Owner.Name == null && src.Owner.Surname == null 
                        ? src.OwnerId
                        : src.Owner.Name + " " + src.Owner.Surname + $" ({src.OwnerId})"))
                .ForMember(dest => dest.Shelf, opt => opt.MapFrom(src => src.Shelf.Name));
        }
    }
}
