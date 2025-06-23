using AutoMapper;
using ERP.EF.Models;
using ERP.Repository.Repositories.Generic;
using ERP.Repository.Repositories.Helper;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.Repository.Repositories.Maintenance
{
    public class CheckListRepo : ICheckListRepo
    {
        private readonly IHelperRepo _helper;
        private readonly IMapper _mapper;

        public CheckListRepo(IHelperRepo helper, IMapper mapper)
        {
            _helper = helper;
            _mapper = mapper;

        }

        public long Add(CheckListMasterVm entity)
        {
            using var dbContext = new ErpDbContext();
            using var transaction = dbContext.Database.BeginTransaction();
            try
            {
                dbContext.Database.UseTransaction(transaction.GetDbTransaction());
                long? ordernumber = 1;

                if (entity.CheckListMasterDetails.Count()==0)
                {
                    var CheckListMasterdata = new CheckListMaster
                    {
                        CheckListID = entity.CheckListID,
                        EquipmentLocationID = entity.EquipmentLocationID,
                        ProcessDate = DateTime.Now,
                        CreatedBy = entity.CreatedBy,
                        CreatedAt = DateTime.Now,
                        ReviewedBy = entity.CreatedBy,
                        ReviewedAt = DateTime.Now,
                        PlanID = entity.PlanID,
                        IsDeleted = false,
                        isClosed = true,
                        isClosedDate = DateTime.Now,
                        IsActive = true,
                    };
                    dbContext.CheckListMasters.Add(CheckListMasterdata);
                    dbContext.SaveChanges();
                }

                else
                {
                    var CheckListMasterdata = new CheckListMaster
                    {
                        CheckListID = entity.CheckListID,
                        EquipmentLocationID = entity.EquipmentLocationID,
                        ProcessDate = DateTime.Now,
                        CreatedBy = entity.CreatedBy,
                        CreatedAt = DateTime.Now,
                        ReviewedBy = entity.CreatedBy,
                        ReviewedAt = DateTime.Now,
                        PlanID = entity.PlanID,
                        IsDeleted = false,
                        isClosed = null,
                        isClosedDate = null,
                        IsActive = true,
                    };
                    dbContext.CheckListMasters.Add(CheckListMasterdata);
                    dbContext.SaveChanges();

                   
                    if (entity.ordernumber == 0)
                    {
                         ordernumber = dbContext.CheckListMasterDetails.OrderByDescending(a => a.WorkOrderNumber).Select(a => a.WorkOrderNumber).FirstOrDefault();
                        if (ordernumber == null)
                        {
                            ordernumber = 1;
                        }
                        else
                        {
                            ordernumber++;
                        }
                    }
                    else
                    {
                        ordernumber = entity.ordernumber;
                    }

                    foreach (var item in entity.CheckListMasterDetails)
                    {
                       

                            //var QuantityStoreInventorytotal = dbContext.StoreInventories.Where(a => a.SparePartID == item.SparePartID).Select(a => a.Quantity).Sum();
                            var CheckListMasterDetailsdata = new CheckListMasterDetail
                            {
                                CheckListMasterID = CheckListMasterdata.CheckListMasterID,
                                SparePartID = item.SparePartID,
                                Quantity = item.Quantity,
                                CommentExecuted = item.CommentExecuted,
                                CreatedBy = entity.CreatedBy,
                                CreatedAt = DateTime.Now,
                                ReviewedBy = entity.ReviewedBy,
                                ReviewedAt = DateTime.Now,
                                IsDeleted = false,
                                IsActive = true,
                                WorkOrderNumber = ordernumber,
                                //QuantityStoreInventory = QuantityStoreInventorytotal,
                            };
                        dbContext.CheckListMasterDetails.Add(CheckListMasterDetailsdata);
                        dbContext.SaveChanges();

                        //var WorkOrderdata = new WorkOrder
                        //{
                        //    CheckListMasterDetailID = CheckListMasterDetailsdata.CheckListMasterDetailID,
                        //    SparePartID = item.SparePartID,
                        //    Quantity = item.Quantity,
                        //    CreatedBy = entity.CreatedBy,
                        //    CreatedAt = DateTime.Now,
                        //    IsDeleted = false,
                        //    IsActive = true,
                        //};
                        //dbContext.WorkOrders.Add(WorkOrderdata);
                        //dbContext.SaveChanges();


                    }
                }





                transaction.Commit();
                return (long)ordernumber;
            }
            catch (Exception ex )
            {

                return 1;
            }
        }

        public CheckListDataVM FinddataChecKlist(int LocationID, int EquipmentID, int EquipmentTypeID)
        {
            try
            {
                CheckListDataVM data = new CheckListDataVM();
                using var dbContext = new ErpDbContext();

                 List<EquipmentLocationVm> dataEquipmentLocation = dbContext.EquipmentLocations.Where(f => f.LocationID == LocationID && f.EquipmentID == EquipmentID && f.IsDeleted == false && f.IsActive == true)
               .Select(f => new EquipmentLocationVm
               {
                   EquipmentLocationID = f.EquipmentLocationID,
                   LocationID = f.LocationID,
                   SerialNumber = f.SerialNumber,
                   EquipmentName = f.EquipmentName,
                  
               }).ToList();


                List<CheckListVm> dataCheckList = dbContext.CheckLists.Where(f => f.EquipmentTypeID == EquipmentTypeID && f.IsDeleted == false && f.IsActive == true)
             .Select(f => new CheckListVm
             {
                 CheckListID = f.CheckListID,
                 CheckItem = f.CheckItem,
                

             }).ToList();

                data.EquipmentLocationVm = dataEquipmentLocation;
                data.CheckListVm = dataCheckList;



                return data;
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        public IList<CustomOption> GetListDropEquipment(int EquipmentTypeID)
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.Equipment.Where(f => f.IsDeleted == false && f.IsActive == true && f.EquipmentTypeID== EquipmentTypeID)
                .Select(f => new CustomOption
                {
                    Id = f.EquipmentID,
                    NameAr = f.EquipmentName,
                }).ToList();

            return lst;
        }

        public IList<CustomOption> GetListDropEquipmentTypes()
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.EquipmentTypes.Where(f => f.IsDeleted == false && f.IsActive == true)
                .Select(f => new CustomOption
                {
                    Id = f.EquipmentTypeID,
                    NameAr = f.TypeName,
                }).ToList();

            return lst;
        }

        public IList<CustomOption> GetListDropLocation()
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.Locations.Where(f => f.IsDeleted == false && f.IsActive == true)
                .Select(f => new CustomOption
                {
                    Id = f.LocationID,
                    NameAr = f.LocationName,
                }).ToList();

            return lst;
        }

        public IList<CustomOption> GetListDropPlan()
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.Plans.Where(f => f.IsDeleted == false && f.IsActive == true)
                .Select(f => new CustomOption
                {
                    Id = f.PlanID,
                    NameAr = f.PlanName,
                }).ToList();

            return lst;
        }

        public IList<CustomOption> GetListDropSparePart(int EquipmentID, int SparePartTypeID)
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.SpareParts.Where(f => f.IsDeleted == false && f.IsActive == true && f.EquipmentID == EquipmentID && f.SparePartTypeID== SparePartTypeID)
                .Select(f => new CustomOption
                {
                    Id = f.SparePartID,
                    NameAr = f.SparePartName,
                }).ToList();

            return lst;
        }

        public IList<CustomOption> GetListDropSparePartType()
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.SparePartTypes.Where(f => f.IsDeleted == false && f.IsActive == true)
                .Select(f => new CustomOption
                {
                    Id = f.SparePartTypeID,
                    NameAr = f.TypeName,
                }).ToList();

            return lst;
        }
    }
}
