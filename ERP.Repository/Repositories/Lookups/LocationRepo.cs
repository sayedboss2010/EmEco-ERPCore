﻿using AutoMapper;
using ERP.EF.Models;
using ERP.Repository.Repositories.Generic;
using ERP.Repository.Repositories.Helper;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.Repository.Repositories.Lookups
{
    public class LocationRepo : IGenericRepo<LocationVm>
    {
        private readonly IMapper _mapper;
        private readonly IHelperRepo _helper;

        public LocationRepo(IMapper mapper, IHelperRepo helper)
        {
            _mapper = mapper;
            _helper = helper;
        }
        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            using var dbContext = new ErpDbContext();
            var obj = dbContext.Locations.Find((int)id);

            if (obj != null)
            {
                obj.IsActive = isActive;

                obj.UpdatedAt = DateTime.Now;
                obj.UpdatedBy = userId;

                dbContext.SaveChanges();

                return true;
            }

            return false;
        }

        public long Add(LocationVm entity)
        {
            try
            {
                var obj = _mapper.Map<LocationVm, Location>(entity);

                using var dbContext = new ErpDbContext();


                obj.IsActive = true;
                obj.IsDeleted = false;
                obj.CreatedAt = DateTime.Now;

                dbContext.Locations.Add(obj);
                dbContext.SaveChanges();

                return obj.LocationID;
            }
            catch (Exception)
            {

                return 0;
            }
        }

        public bool CheckExist(LocationVm entity)
        {
            using var dbContext = new ErpDbContext();

            var exist = false;
            if (entity.LocationID == 0)
            {
                exist = dbContext.Locations
                    .Any(u => u.IsActive==true && u.IsDeleted == false && u.LocationName == entity.LocationName );
            }
            else
            {
                exist = dbContext.Locations
                    .Any(u => u.IsActive == true && u.IsDeleted == false
                    && u.LocationID != entity.LocationID && u.LocationName == entity.LocationName );
            }

            return !exist;
        }

        public bool Delete(long id, int userId)
        {
            using var dbContext = new ErpDbContext();
            var obj = dbContext.Locations.Find((int)id);

            if (obj != null)
            {
                obj.IsDeleted = true;
                obj.UpdatedAt = DateTime.Now;
                obj.UpdatedBy = userId;
                obj.IsActive = false;
                dbContext.SaveChanges();
                return true;
            }
            return false;
        }

        public LocationVm Find(long id)
        {
            using var dbContext = new ErpDbContext();
            var obj = dbContext.Locations.Find((int)id);

            if (obj == null)
                return new LocationVm();

            return _mapper.Map<LocationVm>(obj);
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();

        }

        public IList<LocationVm> List()
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.Locations.Where(f =>
             f.IsDeleted == false).Select(f => new LocationVm
             {
                 LocationID = f.LocationID,
                 LocationName = f.LocationName,
                 IsActive = f.IsActive
             }).ToList();

            return _mapper.Map<List<LocationVm>>(lst);
        }

        public IList<LocationVm> Search(string term)
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.Locations.Where(f =>  f.LocationName.Contains(term) ).ToList();

            return _mapper.Map<List<LocationVm>>(lst);
        }

        public bool Update(LocationVm entity)
        {
            using var dbContext = new ErpDbContext();
            var obj = dbContext.Locations.Find(entity.LocationID);

            if (obj != null)
            {
                obj.LocationName = entity.LocationName;
                obj.UpdatedAt = DateTime.Now;
                obj.UpdatedBy = entity.UpdatedBy;
                obj.IsActive = entity.IsActive;
                dbContext.SaveChanges();
                return true;
            }

            return false;
        }
    }
}
