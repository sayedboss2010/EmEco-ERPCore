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
    public class ClosingFaultRepo : IGenericRepo<ClosingFaultVm>
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

        public long Add(ClosingFaultVm entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(ClosingFaultVm entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public ClosingFaultVm Find(long id)
        {
            try
            {

                using var dbContext = new ErpDbContext();

                var lists = new ClosingFaultVm();
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

        public IList<ClosingFaultVm> List()
        {
            try
            {
                using var dbContext = new ErpDbContext();
                var list = new List<ClosingFaultVm>();
                list= (from d in dbContext.CheckListMasters.Where(a=>a.isClosed==null)
                       join y in dbContext.CheckLists on d.CheckListID equals y.CheckListID
                       join a in dbContext.EquipmentTypes on y.EquipmentTypeID equals a.EquipmentTypeID
                       join b in dbContext.EquipmentLocations on d.EquipmentLocationID equals b.EquipmentLocationID
                       join c in dbContext.Equipment on b.EquipmentID equals c.EquipmentID
                       join z in dbContext.Locations on b.LocationID equals z.LocationID
                       join x in dbContext.Plans on d.PlanID equals x.PlanID
                       join p in dbContext.Employees on d.CreatedBy equals p.EmployeeID

                       select new ClosingFaultVm
                       {
                           CheckListMasterID = d.CheckListMasterID,
                           CheckListID = d.CheckListID,
                           EquipmentLocationID = d.EquipmentLocationID,
                           CreatedBy = p.FirstName +" "+p.LastName,
                           CheckItem = y.CheckItem,
                           EquipmentTypeID = y.EquipmentTypeID,
                           TypeName = a.TypeName,
                           EquipmentName = c.EquipmentName,
                           LocationName = z.LocationName,
                           CreatedAt = d.CreatedAt.ToString(),
                           planName = x.PlanName,
                           CheckListMasterDetails= (from dd in dbContext.CheckListMasterDetails.Where(a => a.CheckListMasterID == d.CheckListMasterID)
                                                   join yy in dbContext.SpareParts on dd.SparePartID equals yy.SparePartID
                                                   join aa in dbContext.SparePartTypes on yy.SparePartTypeID equals aa.SparePartTypeID
                                                   select new CheckListMasterDetailVm { Quantity=dd.Quantity,CheckListMasterDetailID=dd.CheckListMasterDetailID,SparePartID=yy.SparePartID, SparePartName=yy.SparePartName,SparePartTypeName=aa.TypeName }).ToList()
                       }).ToList();

                return list;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public IList<ClosingFaultVm> Search(string term)
        {
            throw new NotImplementedException();
        }

        public bool Update(ClosingFaultVm entity)
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






                    if (data != null)
                    {
                        data.isClosed = true;
                        data.isClosedDate = DateTime.Now;
                        data.ExecutedBy = entity.CreatedByuser;
                        data.ExecutedAt = DateTime.Now;
                        data.UpdatedAt = DateTime.Now;
                        data.UpdatedBy = entity.CreatedByuser;
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
                            datamaster.UpdatedBy = entity.CreatedByuser; ;
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

                throw;
            }
        }
    }
}
