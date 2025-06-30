using ERP.Repository.Repositories.Generic;
using ERP.Repository.Repositories.Maintenance;
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
    public class LocationService : IGenericService<LocationVm>
    {

        private readonly IGenericRepo<LocationVm> _Loc;
        public LocationService(IGenericRepo<LocationVm> loc) 
        {
            _Loc = loc;
        }



        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            return _Loc.ActivateEntity(id, isActive, userId);
        }

        public long Add(LocationVm entity)
        {
            try
            {
                return _Loc.Add(entity);
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public bool CheckExist(LocationVm entity)
        {
            try
            {
                return _Loc.CheckExist(entity);
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
                return _Loc.Delete(id, (int)userId);
            }
            catch (Exception)
            {
                return false;
            }
        }

        public LocationVm Find(long id)
        {
            try
            {
                return _Loc.Find(id);
            }
            catch (Exception)
            {
                return new LocationVm();
            }
        }

        public IList<CustomOption> GetListDrop()
        {
            try
            {
                return _Loc.GetListDrop();
            }
            catch (Exception)
            {
                return new List<CustomOption>();
            }
        }

        public IList<LocationVm> List()
        {
            try
            {
                return _Loc.List();
            }
            catch (Exception)
            {
                return new List<LocationVm>();
            }
        }

        public IList<LocationVm> Search(string term)
        {
            try
            {
                return _Loc.Search(term);
            }
            catch (Exception)
            {
                return new List<LocationVm>();
            }
        }

        public bool Update(LocationVm entity)
        {
            try
            {
                return _Loc.Update(entity);
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
