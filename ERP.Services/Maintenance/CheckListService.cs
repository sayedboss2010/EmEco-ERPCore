using ERP.EF.Models;
using ERP.Repository.Repositories.Maintenance;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.Services.Maintenance
{
    public class CheckListService : ICheckListService
    {
        private readonly ICheckListRepo _check;

        public CheckListService(ICheckListRepo check)
        {
            _check = check;
        }

        public long Add(CheckListMasterVm entity)
        {
            return _check.Add(entity);
        }

        public CheckListDataVM FinddataChecKlist(int LocationID, int EquipmentID, int EquipmentTypeID, int PlanID)
        {
            return _check.FinddataChecKlist(LocationID, EquipmentID, EquipmentTypeID, PlanID);
        }

        public IList<CustomOption> GetListDropEquipment(int EquipmentTypeID)
        {
           return _check.GetListDropEquipment(EquipmentTypeID);
        }

        public IList<CustomOption> GetListDropEquipmentTypes()
        {
            return _check.GetListDropEquipmentTypes();
        }

        public IList<CustomOption> GetListDropLocation()
        {
            return _check.GetListDropLocation();
        }

        public IList<CustomOption> GetListDropPlan()
        {
            return _check.GetListDropPlan();
        }

        public IList<CustomOption> GetListDropSparePart(int EquipmentID, int SparePartTypeID)
        {
            return _check.GetListDropSparePart(EquipmentID, SparePartTypeID);
        }

        public IList<CustomOption> GetListDropSparePartType()
        {
            return _check.GetListDropSparePartType();
        }
    }
}
