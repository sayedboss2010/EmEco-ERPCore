using AutoMapper;
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
    public class EquipmentTypesRepo : IGenericRepo<EquipmentTypeVm>
    {
        private readonly IMapper _mapper;
        private readonly IHelperRepo _helper;

        public EquipmentTypesRepo(IMapper mapper, IHelperRepo helper)
        {
            _mapper = mapper;
            _helper = helper;
        }
        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            using var dbContext = new ErpDbContext();
            var obj = dbContext.EquipmentTypes.Find((int)id);

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

        public long Add(EquipmentTypeVm entity)
        {
            try
            {
                var obj = _mapper.Map<EquipmentTypeVm, EquipmentType>(entity);

                using var dbContext = new ErpDbContext();


                obj.IsActive = true;
                obj.IsDeleted = false;
                obj.CreatedAt = DateTime.Now;

                dbContext.EquipmentTypes.Add(obj);
                dbContext.SaveChanges();

                return obj.EquipmentTypeID;
            }
            catch (Exception)
            {

                return 0;
            }
        }

        public bool CheckExist(EquipmentTypeVm entity)
        {
            using var dbContext = new ErpDbContext();

            var exist = false;
            if (entity.EquipmentTypeID == 0)
            {
                exist = dbContext.EquipmentTypes
                    .Any(u => u.IsActive == true && u.IsDeleted == false && u.TypeName == entity.TypeName);
            }
            else
            {
                exist = dbContext.EquipmentTypes
                    .Any(u => u.IsActive == true && u.IsDeleted == false
                    && u.EquipmentTypeID != entity.EquipmentTypeID && u.TypeName == entity.TypeName);
            }

            return !exist;
        }

        public bool Delete(long id, int userId)
        {
            using var dbContext = new ErpDbContext();
            var obj = dbContext.EquipmentTypes.Find((int)id);

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

        public EquipmentTypeVm Find(long id)
        {
            using var dbContext = new ErpDbContext();
            var obj = dbContext.EquipmentTypes.Find((int)id);

            if (obj == null)
                return new EquipmentTypeVm();

            return _mapper.Map<EquipmentTypeVm>(obj);
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();

        }

        public IList<EquipmentTypeVm> List()
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.EquipmentTypes.Where(f =>
             f.IsDeleted == false).Select(f => new EquipmentTypeVm
             {
                 EquipmentTypeID = f.EquipmentTypeID,
                 TypeName = f.TypeName,
                 Description = f.Description,
                 IsActive = f.IsActive
             }).ToList();

            return _mapper.Map<List<EquipmentTypeVm>>(lst);
        }

        public IList<EquipmentTypeVm> Search(string term)
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.EquipmentTypes.Where(f => f.TypeName.Contains(term)).ToList();

            return _mapper.Map<List<EquipmentTypeVm>>(lst);
        }

        public bool Update(EquipmentTypeVm entity)
        {
            using var dbContext = new ErpDbContext();
            var obj = dbContext.EquipmentTypes.Find(entity.EquipmentTypeID);

            if (obj != null)
            {
                obj.TypeName = entity.TypeName;
                obj.Description=entity.Description;
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
