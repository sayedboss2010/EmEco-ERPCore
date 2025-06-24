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

namespace ERP.Repository.Repositories.Maintenance
{
    public class ClosingFaultFinishedRepo : IGenericRepo<ClosingFaultFinIshedGroupVm>
    {
        private readonly IMapper _mapper;
        private readonly IHelperRepo _helper;

        public ClosingFaultFinishedRepo(IMapper mapper, IHelperRepo helper)
        {
            _mapper = mapper;
            _helper = helper;
        }

        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(ClosingFaultFinIshedGroupVm entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(ClosingFaultFinIshedGroupVm entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public ClosingFaultFinIshedGroupVm Find(long id)
        {
            throw new NotImplementedException();

        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();

        }

        public IList<ClosingFaultFinIshedGroupVm> List()
        {
            try
            {
                using var dbContext = new ErpDbContext();

                var list = new List<ClosingFaultFinIshedGroupVm>();

                list = (
      from dd in dbContext.CheckListMasterDetails.Where(a => a.isClosed == true && a.IsPrint == true)
      join d in dbContext.CheckListMasters on dd.CheckListMasterID equals d.CheckListMasterID
      join y in dbContext.CheckLists on d.CheckListID equals y.CheckListID
      join a in dbContext.EquipmentTypes on y.EquipmentTypeID equals a.EquipmentTypeID
      join b in dbContext.EquipmentLocations on d.EquipmentLocationID equals b.EquipmentLocationID
      join c in dbContext.Equipment on b.EquipmentID equals c.EquipmentID
      join z in dbContext.Locations on b.LocationID equals z.LocationID
      join x in dbContext.Plans on d.PlanID equals x.PlanID
      join p in dbContext.Employees on d.CreatedBy equals p.EmployeeID
      join yy in dbContext.SpareParts on dd.SparePartID equals yy.SparePartID
      join cc in dbContext.SparePartTypes on yy.SparePartTypeID equals cc.SparePartTypeID

      select new  // <--- دي كانت ناقصة
      {

          dd.WorkOrderNumber,
          dd.CheckListMasterDetailID,
          y.CheckItem,
          b.EquipmentName,
          p.FirstName,
          p.LastName,
          a.TypeName,
          Equipment = c.EquipmentName,
          z.LocationName,
          d.CreatedAt,
          x.PlanName,
          yy.SparePartName,
          SparePartTypes = cc.TypeName,
          dd.Quantity,
          dd.isClosedDate
      })
      .AsEnumerable()
      .GroupBy(x => x.WorkOrderNumber)
      .Select(g => new ClosingFaultFinIshedGroupVm
      {
          WorkOrderNumber = (long)g.Key,
          Details = g.Select(x => new WorkOrderVm
          {
              CheckListMasterDetailID = x.CheckListMasterDetailID,
              WorkOrderNumber = x.WorkOrderNumber,
              Quantity = x.Quantity,
              CheckItem = x.CheckItem,
              EquipmentLocationsName = x.EquipmentName,
              CreatedByUser = x.FirstName + " " + x.LastName,
              TypeName = x.TypeName,
              EquipmentName = x.Equipment,
              LocationName = x.LocationName,
              Createddate = x.CreatedAt.ToString(),
              planName = x.PlanName,
              SparePartName = x.SparePartName,
              SparePartTypeName = x.SparePartTypes,
              UpdatedAt=x.isClosedDate
          }).ToList()
      })
      .ToList();


                return list;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public IList<ClosingFaultFinIshedGroupVm> Search(string term)
        {
            throw new NotImplementedException();
        }

        public bool Update(ClosingFaultFinIshedGroupVm entity)
        {
            throw new NotImplementedException();

        }
    }
}
