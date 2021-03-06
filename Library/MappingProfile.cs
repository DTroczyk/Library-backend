using AutoMapper;
using Library.BLL.Entities;
using Library.ViewModels.DTOs;
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
                     String.IsNullOrWhiteSpace(src.Owner.Name) && String.IsNullOrWhiteSpace(src.Owner.Surname) 
                        ? src.OwnerId
                        : src.Owner.Name + " " + src.Owner.Surname + $" ({src.OwnerId})"))
                .ForMember(dest => dest.Shelf, opt => opt.MapFrom(src => src.Shelf.Name));
            CreateMap<Shelf, ShelfVm>()
                .ForMember(dest => dest.Owner, opt => opt.MapFrom(src =>
                     String.IsNullOrWhiteSpace(src.Owner.Name) && String.IsNullOrWhiteSpace(src.Owner.Surname)
                        ? src.OwnerId
                        : src.Owner.Name + " " + src.Owner.Surname + $" ({src.OwnerId})"));
            CreateMap<User, UserVm>()
                .ForMember(dest => dest.Shelves, opt => opt.MapFrom(src => src.Shelves));
            CreateMap<AddOrEditItemDto, Item>()
                .ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.Id == null ? 0 : src.Id));
        }
    }
}
