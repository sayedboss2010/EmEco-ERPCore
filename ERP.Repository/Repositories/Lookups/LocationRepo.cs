using AutoMapper;
using ERP.Repository.Repositories.Generic;
using ERP.Repository.Repositories.Helper;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.Repository.Repositories.Lookups
{
    public class LocationRepo : IGenericRepo<LocationVm>
    {
        private readonly IMapper _mapper;
        private readonly IHelperRepo _helper;

        public LocationRepo(IMapper mapper, IHelperRepo helper)
        {
            _mapper = mapper;
            _helper = helper;
        }
        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(LocationVm entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(LocationVm entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public LocationVm Find(long id)
        {
            throw new NotImplementedException();
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();
        }

        public IList<LocationVm> List()
        {
            throw new NotImplementedException();
        }

        public IList<LocationVm> Search(string term)
        {
            throw new NotImplementedException();
        }

        public bool Update(LocationVm entity)
        {
            throw new NotImplementedException();
        }
    }
}
