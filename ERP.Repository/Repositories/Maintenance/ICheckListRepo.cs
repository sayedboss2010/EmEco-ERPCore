using ERP.EF.Models;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.Repository.Repositories.Maintenance
{
    public interface ICheckListRepo
    {
        IList<CustomOption> GetListDropLocation();
        IList<CustomOption> GetListDropEquipmentTypes();

        IList<CustomOption> GetListDropEquipment(int EquipmentTypeID);

        IList<CustomOption> GetListDropPlan();

        CheckListDataVM FinddataChecKlist(int LocationID, int EquipmentID, int EquipmentTypeID);

        long Add(CheckListMasterVm entity);

        IList<CustomOption> GetListDropSparePartType();

        IList<CustomOption> GetListDropSparePart(int EquipmentID, int SparePartTypeID);
    }
}
