using AutoMapper;
using ERP.EF.Models;
using ERP.Repository.Repositories.Generic;
using ERP.Repository.Repositories.Helper;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.Repository.Repositories.Maintenance
{
    public class WorkOrderRepo : IGenericRepo<WorkOrderVm>
    {
        private readonly IMapper _mapper;
        private readonly IHelperRepo _helper;

        public WorkOrderRepo(IMapper mapper, IHelperRepo helper)
        {
            _mapper = mapper;
            _helper = helper;
        }

        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(WorkOrderVm entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(WorkOrderVm entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public WorkOrderVm Find(long id)
        {
            throw new NotImplementedException();
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();
        }

        public IList<WorkOrderVm> List()
        {
            using var dbContext = new ErpDbContext();

            var list = new List<WorkOrderVm>();

            list = (from dd in dbContext.WorkOrders.Where(a => a.InstallationStatus == null)

                    join aa in dbContext.CheckListMasterDetails on dd.CheckListMasterDetailID equals aa.CheckListMasterDetailID
                    where aa.isClosed == null
                    join d in dbContext.CheckListMasters on aa.CheckListMasterID equals d.CheckListMasterID

                    join y in dbContext.CheckLists on d.CheckListID equals y.CheckListID

                    join a in dbContext.EquipmentTypes on y.EquipmentTypeID equals a.EquipmentTypeID

                    join b in dbContext.EquipmentLocations on d.EquipmentLocationID equals b.EquipmentLocationID

                    join c in dbContext.Equipment on b.EquipmentID equals c.EquipmentID

                    join z in dbContext.Locations on b.LocationID equals z.LocationID

                    join x in dbContext.Plans on d.PlanID equals x.PlanID

                    join p in dbContext.Employees on d.CreatedBy equals p.EmployeeID
                    join yy in dbContext.SpareParts on dd.SparePartID equals yy.SparePartID
                    join cc in dbContext.SparePartTypes on yy.SparePartTypeID equals cc.SparePartTypeID

                    select new WorkOrderVm
                    {
                        CheckItem = y.CheckItem,
                        EquipmentLocationsName = b.EquipmentName,
                        WorkOrderID = dd.WorkOrderID,
                        CheckListMasterDetailID = aa.CheckListMasterDetailID,
                        CreatedByUser = p.FirstName + " " + p.LastName,
                        TypeName = a.TypeName,
                        EquipmentName = c.EquipmentName,
                        LocationName = z.LocationName,
                        Createddate = d.CreatedAt.ToString(),
                        planName = x.PlanName,
                        SparePartName = yy.SparePartName,
                        SparePartTypeName = cc.TypeName,
                        Quantity = dd.Quantity

                    }).ToList();


            return list;
        }

        public IList<WorkOrderVm> Search(string term)
        {
            try
            {

                using var dbContext = new ErpDbContext();

                List<int> intList = term.Split(',').Select(int.Parse).ToList();


                var list = new List<WorkOrderVm>();

                list = (from dd in dbContext.WorkOrders.Where(a => a.InstallationStatus == null && intList.Contains(a.WorkOrderID))

                        join aa in dbContext.CheckListMasterDetails on dd.CheckListMasterDetailID equals aa.CheckListMasterDetailID
                        where aa.isClosed == null
                        join d in dbContext.CheckListMasters on aa.CheckListMasterID equals d.CheckListMasterID

                        join y in dbContext.CheckLists on d.CheckListID equals y.CheckListID

                        join a in dbContext.EquipmentTypes on y.EquipmentTypeID equals a.EquipmentTypeID

                        join b in dbContext.EquipmentLocations on d.EquipmentLocationID equals b.EquipmentLocationID

                        join c in dbContext.Equipment on b.EquipmentID equals c.EquipmentID

                        join z in dbContext.Locations on b.LocationID equals z.LocationID

                        join x in dbContext.Plans on d.PlanID equals x.PlanID

                        join p in dbContext.Employees on d.CreatedBy equals p.EmployeeID
                        join yy in dbContext.SpareParts on dd.SparePartID equals yy.SparePartID
                        join cc in dbContext.SparePartTypes on yy.SparePartTypeID equals cc.SparePartTypeID

                        select new WorkOrderVm
                        {
                            CheckItem = y.CheckItem,
                            EquipmentLocationsName = b.EquipmentName,
                            WorkOrderID = dd.WorkOrderID,
                            CheckListMasterDetailID = aa.CheckListMasterDetailID,
                            CreatedByUser = p.FirstName + " " + p.LastName,
                            TypeName = a.TypeName,
                            EquipmentName = c.EquipmentName,
                            LocationName = z.LocationName,
                            Createddate = d.CreatedAt.ToString(),
                            planName = x.PlanName,
                            SparePartName = yy.SparePartName,
                            SparePartTypeName = cc.TypeName,
                            Quantity = dd.Quantity

                        }).ToList();
                return list;

            }
            catch (Exception)
            {

                throw;
            }
        }

        public bool Update(WorkOrderVm entity)
        {
            using var dbContext = new ErpDbContext();
            using var transaction = dbContext.Database.BeginTransaction();
            try
            {
                dbContext.Database.UseTransaction(transaction.GetDbTransaction());

                foreach (var item in entity.Ids)
                {
                    var datafound = dbContext.WorkOrders.Find(item);
                    if (datafound != null)
                    {
                        datafound.InstallationStatus = true;
                        datafound.UpdatedBy = entity.UpdatedBy;
                        datafound.UpdatedAt = DateTime.Now;

                    }
                    dbContext.SaveChanges();
                }

                transaction.Commit();

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
