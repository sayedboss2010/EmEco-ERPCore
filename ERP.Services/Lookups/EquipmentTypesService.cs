using ERP.Repository.Repositories.Generic;
using ERP.Services.Generic;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.Services.Lookups
{
    public class EquipmentTypesService : IGenericService<EquipmentTypeVm>
    {
        private readonly IGenericRepo<EquipmentTypeVm> _LKET;
        public EquipmentTypesService(IGenericRepo<EquipmentTypeVm> LKET)
        {
            _LKET = LKET;
        }



        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            return _LKET.ActivateEntity(id, isActive, userId);
        }

        public long Add(EquipmentTypeVm entity)
        {
            try
            {
                return _LKET.Add(entity);
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public bool CheckExist(EquipmentTypeVm entity)
        {
            try
            {
                return _LKET.CheckExist(entity);
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Delete(long id, int userId)
        {
            try
            {
                return _LKET.Delete(id, (int)userId);
            }
            catch (Exception)
            {
                return false;
            }
        }

        public EquipmentTypeVm Find(long id)
        {
            try
            {
                return _LKET.Find(id);
            }
            catch (Exception)
            {
                return new EquipmentTypeVm();
            }
        }

        public IList<CustomOption> GetListDrop()
        {
            try
            {
                return _LKET.GetListDrop();
            }
            catch (Exception)
            {
                return new List<CustomOption>();
            }
        }

        public IList<EquipmentTypeVm> List()
        {
            try
            {
                return _LKET.List();
            }
            catch (Exception)
            {
                return new List<EquipmentTypeVm>();
            }
        }

        public IList<EquipmentTypeVm> Search(string term)
        {
            try
            {
                return _LKET.Search(term);
            }
            catch (Exception)
            {
                return new List<EquipmentTypeVm>();
            }
        }

        public bool Update(EquipmentTypeVm entity)
        {
            try
            {
                return _LKET.Update(entity);
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
