using AutoMapper;
using ERP.EF.Models;
using ERP.Repository.Repositories.Generic;
using ERP.Repository.Repositories.Helper;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.Repository.Repositories.Maintenance
{
    public class WorkOrderRepo : IGenericRepo<WorkOrderGroupVM>
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

        public long Add(WorkOrderGroupVM entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(WorkOrderGroupVM entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public WorkOrderGroupVM Find(long id)
        {
            try
            {

                using var dbContext = new ErpDbContext();

                WorkOrderGroupVM data = new WorkOrderGroupVM();

                var list = new List<WorkOrderVm>();

                list = (from aa in dbContext.CheckListMasterDetails.Where(a => a.isClosed == null && a.WorkOrderNumber == id && a.IsPrint==null)

                        join d in dbContext.CheckListMasters on aa.CheckListMasterID equals d.CheckListMasterID

                        join y in dbContext.CheckLists on d.CheckListID equals y.CheckListID

                        join a in dbContext.EquipmentTypes on y.EquipmentTypeID equals a.EquipmentTypeID

                        join b in dbContext.EquipmentLocations on d.EquipmentLocationID equals b.EquipmentLocationID

                        join c in dbContext.Equipment on b.EquipmentID equals c.EquipmentID

                        join z in dbContext.Locations on b.LocationID equals z.LocationID

                        join x in dbContext.Plans on d.PlanID equals x.PlanID

                        join p in dbContext.Employees on d.CreatedBy equals p.EmployeeID
                        join yy in dbContext.SpareParts on aa.SparePartID equals yy.SparePartID
                        join cc in dbContext.SparePartTypes on yy.SparePartTypeID equals cc.SparePartTypeID

                        select new WorkOrderVm
                        {
                            CheckItem = y.CheckItem,
                            EquipmentLocationsName = b.EquipmentName,
                            CheckListMasterDetailID = aa.CheckListMasterDetailID,
                            CreatedByUser = p.FirstName + " " + p.LastName,
                            TypeName = a.TypeName,
                            EquipmentName = c.EquipmentName,
                            LocationName = z.LocationName,
                            Createddate = d.CreatedAt.ToString(),
                            planName = x.PlanName,
                            SparePartName = yy.SparePartName,
                            SparePartTypeName = cc.TypeName,
                            Quantity = aa.Quantity,
                            WorkOrderNumber = aa.WorkOrderNumber,
                        }).ToList();
                data.Details = list;
                return data;

            }
            catch (Exception)
            {

                throw;
            }
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();
        }

        public IList<WorkOrderGroupVM> List()
        {
            using var dbContext = new ErpDbContext();

            var list = new List<WorkOrderGroupVM>();

                              list = (
                    from dd in dbContext.CheckListMasterDetails.Where(a => a.isClosed == null && a.IsPrint == null)
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
                    p.FirstName ,
                    p.LastName,
                    a.TypeName,
                    Equipment = c.EquipmentName  ,
                    z.LocationName,
                    d.CreatedAt,
                    x.PlanName,
                    yy.SparePartName,
                    SparePartTypes=cc.TypeName,
                      dd.Quantity
                    })
                    .AsEnumerable()
                    .GroupBy(x => x.WorkOrderNumber)
                    .Select(g => new WorkOrderGroupVM
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
                    }).ToList()
                    })
                    .ToList();


            //list = (from dd in dbContext.WorkOrders.Where(a => a.InstallationStatus == null)

            //        join aa in dbContext.CheckListMasterDetails on dd.CheckListMasterDetailID equals aa.CheckListMasterDetailID
            //        where aa.isClosed == null
            //        join d in dbContext.CheckListMasters on aa.CheckListMasterID equals d.CheckListMasterID

            //        join y in dbContext.CheckLists on d.CheckListID equals y.CheckListID

            //        join a in dbContext.EquipmentTypes on y.EquipmentTypeID equals a.EquipmentTypeID

            //        join b in dbContext.EquipmentLocations on d.EquipmentLocationID equals b.EquipmentLocationID

            //        join c in dbContext.Equipment on b.EquipmentID equals c.EquipmentID

            //        join z in dbContext.Locations on b.LocationID equals z.LocationID

            //        join x in dbContext.Plans on d.PlanID equals x.PlanID

            //        join p in dbContext.Employees on d.CreatedBy equals p.EmployeeID
            //        join yy in dbContext.SpareParts on dd.SparePartID equals yy.SparePartID
            //        join cc in dbContext.SparePartTypes on yy.SparePartTypeID equals cc.SparePartTypeID

            //        select new WorkOrderVm
            //        {
            //            CheckItem = y.CheckItem,
            //            EquipmentLocationsName = b.EquipmentName,
            //            WorkOrderID = dd.WorkOrderID,
            //            CheckListMasterDetailID = aa.CheckListMasterDetailID,
            //            CreatedByUser = p.FirstName + " " + p.LastName,
            //            TypeName = a.TypeName,
            //            EquipmentName = c.EquipmentName,
            //            LocationName = z.LocationName,
            //            Createddate = d.CreatedAt.ToString(),
            //            planName = x.PlanName,
            //            SparePartName = yy.SparePartName,
            //            SparePartTypeName = cc.TypeName,
            //            Quantity = dd.Quantity

            //        }).ToList();


            return list;
        }

        public IList<WorkOrderGroupVM> Search(string result)
        {
            //try
            //{

            //    using var dbContext = new ErpDbContext();

            //    long Id = long.Parse(result);
            //    WorkOrderGroupVM data = new WorkOrderGroupVM();

            //    var list = new List<WorkOrderVm>();

            //    list = (from aa in dbContext.CheckListMasterDetails.Where(a => a.isClosed == null && a.WorkOrderNumber== Id)

            //            join d in dbContext.CheckListMasters on aa.CheckListMasterID equals d.CheckListMasterID

            //            join y in dbContext.CheckLists on d.CheckListID equals y.CheckListID

            //            join a in dbContext.EquipmentTypes on y.EquipmentTypeID equals a.EquipmentTypeID

            //            join b in dbContext.EquipmentLocations on d.EquipmentLocationID equals b.EquipmentLocationID

            //            join c in dbContext.Equipment on b.EquipmentID equals c.EquipmentID

            //            join z in dbContext.Locations on b.LocationID equals z.LocationID

            //            join x in dbContext.Plans on d.PlanID equals x.PlanID

            //            join p in dbContext.Employees on d.CreatedBy equals p.EmployeeID
            //            join yy in dbContext.SpareParts on dd.SparePartID equals yy.SparePartID
            //            join cc in dbContext.SparePartTypes on yy.SparePartTypeID equals cc.SparePartTypeID

            //            select new WorkOrderVm
            //            {
            //                CheckItem = y.CheckItem,
            //                EquipmentLocationsName = b.EquipmentName,
            //                CheckListMasterDetailID = aa.CheckListMasterDetailID,
            //                CreatedByUser = p.FirstName + " " + p.LastName,
            //                TypeName = a.TypeName,
            //                EquipmentName = c.EquipmentName,
            //                LocationName = z.LocationName,
            //                Createddate = d.CreatedAt.ToString(),
            //                planName = x.PlanName,
            //                SparePartName = yy.SparePartName,
            //                SparePartTypeName = cc.TypeName,
            //                Quantity = aa.Quantity

            //            }).ToList();
            //    data.Details = list;
            //    return data;

            //}
            //catch (Exception)
            //{

            //    throw;
            //}
            throw new NotImplementedException();

        }

        public bool Update(WorkOrderGroupVM entity)
        {
            using var dbContext = new ErpDbContext();
            using var transaction = dbContext.Database.BeginTransaction();
            try
            {
                dbContext.Database.UseTransaction(transaction.GetDbTransaction());

                var data= dbContext.CheckListMasterDetails.Where(a=>a.WorkOrderNumber==entity.WorkOrderNumber).ToList();
                foreach (var item in data)
                {
                    var datafound = dbContext.CheckListMasterDetails.Find(item.CheckListMasterDetailID);
                    if (datafound != null)
                    {
                       datafound.IsPrint = true;
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
