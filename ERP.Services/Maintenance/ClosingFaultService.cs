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

namespace ERP.Services.Maintenance
{
    public class ClosingFaultService : IGenericService<ClosingFaultVm>
    {
        private readonly IGenericRepo<ClosingFaultVm> _Closing;
        public ClosingFaultService(IGenericRepo<ClosingFaultVm> Closing)
        {

            _Closing = Closing;

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
            return _Closing.Find(id);
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();
        }

        public IList<ClosingFaultVm> List()
        {
           return  _Closing.List();
        }

        public IList<ClosingFaultVm> Search(string term)
        {
            throw new NotImplementedException();
        }

        public bool Update(ClosingFaultVm entity)
        {
            return _Closing.Update(entity);
        }
    }
}
