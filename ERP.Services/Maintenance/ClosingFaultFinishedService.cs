using ERP.Repository.Repositories.Generic;
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
    public class ClosingFaultFinishedService : IGenericService<ClosingFaultFinIshedGroupVm>
    {
        private readonly IGenericRepo<ClosingFaultFinIshedGroupVm> _Closing;
        public ClosingFaultFinishedService(IGenericRepo<ClosingFaultFinIshedGroupVm> Closing)
        {

            _Closing = Closing;

        }

        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(ClosingFaultFinIshedGroupVm entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(ClosingFaultFinIshedGroupVm entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public ClosingFaultFinIshedGroupVm Find(long id)
        {
            throw new NotImplementedException();
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();
        }

        public IList<ClosingFaultFinIshedGroupVm> List()
        {
            return _Closing.List();
        }

        public IList<ClosingFaultFinIshedGroupVm> Search(string term)
        {
            throw new NotImplementedException();
        }

        public bool Update(ClosingFaultFinIshedGroupVm entity)
        {
            throw new NotImplementedException();
        }
    }
}
