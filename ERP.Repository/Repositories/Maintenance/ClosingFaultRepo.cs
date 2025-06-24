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
    public class ClosingFaultRepo : IGenericRepo<ClosingFaultGroupVm>
    {
        private readonly IMapper _mapper;
        private readonly IHelperRepo _helper;

        public ClosingFaultRepo(IMapper mapper, IHelperRepo helper)
        {
            _mapper = mapper;
            _helper = helper;
        }

        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(ClosingFaultGroupVm entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(ClosingFaultGroupVm entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public ClosingFaultGroupVm Find(long id)
        {
            try
            {

                using var dbContext = new ErpDbContext();

                var lists = new ClosingFaultGroupVm();
                var list = (from dd in dbContext.CheckListMasterDetails.Where(a => a.CheckListMasterDetailID == id)
                            join yy in dbContext.SpareParts on dd.SparePartID equals yy.SparePartID
                            join aa in dbContext.SparePartTypes on yy.SparePartTypeID equals aa.SparePartTypeID
                            select new CheckListMasterDetailVm { Quantity = dd.Quantity, CheckListMasterDetailID = dd.CheckListMasterDetailID, SparePartID = yy.SparePartID, SparePartName = yy.SparePartName, SparePartTypeName = aa.TypeName }).ToList();
               
                lists.CheckListMasterDetails = list;
                return lists;
              
            }
            catch (Exception)
            {

                throw;
            }
        }

        public IList<CustomOption> GetListDrop()
        {
            using var dbContext = new ErpDbContext();
            var lst = dbContext.Stores.Where(f => f.IsDeleted == false && f.IsActive == true)
                .Select(f => new CustomOption
                {
                    Id = f.StoreID,
                    NameAr = f.StoreName,
                }).ToList();

            return lst;
        }

        public IList<ClosingFaultGroupVm> List()
        {
            try
            {
                                using var dbContext = new ErpDbContext();

                                var list = new List<ClosingFaultGroupVm>();

                                list = (
                      from dd in dbContext.CheckListMasterDetails.Where(a => a.isClosed == null && a.IsPrint == true)
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
                          dd.Quantity
                      })
                      .AsEnumerable()
                      .GroupBy(x => x.WorkOrderNumber)
                      .Select(g => new ClosingFaultGroupVm
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


                                return list;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public IList<ClosingFaultGroupVm> Search(string term)
        {
            throw new NotImplementedException();
        }

        public bool Update(ClosingFaultGroupVm entity)
        {
            using var dbContext = new ErpDbContext();
            using var transaction = dbContext.Database.BeginTransaction();
            try
            {
                dbContext.Database.UseTransaction(transaction.GetDbTransaction());



                var data = dbContext.CheckListMasterDetails.Find(entity.CheckListMasterDetailID);

                //var QuantityStoreInventorytotal = dbContext.StoreInventories.Where(a => a.SparePartID == data.SparePartID &&a.StoreID== entity.StoreID).Select(a => a.Quantity).Sum();

                //if (QuantityStoreInventorytotal>=data.Quantity)
                //{
                var oldimage = "";
                var Newimage = "";
               





                if (data != null)
                {
                    if (entity.oldImage != null)
                    {

                        string path = Directory.GetCurrentDirectory().Replace("\\", "/") + "/wwwroot/Files/Before/" + DateTime.Now.Year + "/" + DateTime.Now.Month;
                        if (!Directory.Exists(path))
                            Directory.CreateDirectory(path);

                        string fileName = Guid.NewGuid() + Path.GetFileName(entity.oldImage.FileName);
                        string finalpath = Path.Combine(path, fileName);

                        using (var stream = new FileStream(

                            finalpath, FileMode.Create

                            ))
                        {
                            entity.oldImage.CopyTo(stream);
                        }
                        string pathDB = "Before/" + DateTime.Now.Year + "/" + DateTime.Now.Month;
                        oldimage = pathDB + "/" + fileName;
                    }

                    if (entity.newImage != null)
                    {

                        string path = Directory.GetCurrentDirectory().Replace("\\", "/") + "/wwwroot/Files/After/" + DateTime.Now.Year + "/" + DateTime.Now.Month;
                        if (!Directory.Exists(path))
                            Directory.CreateDirectory(path);

                        string fileName = Guid.NewGuid() + Path.GetFileName(entity.oldImage.FileName);
                        string finalpath = Path.Combine(path, fileName);

                        using (var stream = new FileStream(

                            finalpath, FileMode.Create

                            ))
                        {
                            entity.oldImage.CopyTo(stream);
                        }
                        string pathDB = "After/" + DateTime.Now.Year + "/" + DateTime.Now.Month;
                        Newimage = pathDB + "/" + fileName;
                    }





                    data.isClosed = true;
                    data.isClosedDate = DateTime.Now;
                    data.ExecutedBy = entity.UpdatedBy;
                    data.ExecutedAt = DateTime.Now;
                    data.UpdatedAt = DateTime.Now;
                    data.UpdatedBy = entity.UpdatedBy;
                    data.ImgeOld = oldimage;
                    data.ImgeNew = Newimage;
                }
                dbContext.SaveChanges();

                var datamastercount = dbContext.CheckListMasterDetails.Where(a => a.CheckListMasterID == data.CheckListMasterID && a.isClosed == null).Count();

                if (datamastercount == 0)
                {

                    var datamaster = dbContext.CheckListMasters.Where(a => a.CheckListMasterID == data.CheckListMasterID).FirstOrDefault();
                    if (datamaster != null)
                    {
                        datamaster.isClosed = true;
                        datamaster.isClosedDate = DateTime.Now;
                        datamaster.UpdatedBy = entity.UpdatedBy; ;
                        datamaster.UpdatedAt = DateTime.Now;
                    }

                }

                dbContext.SaveChanges();



                transaction.Commit();
                return true;
                //}
                //else
                //{
                //    return false;
                //}

            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
