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
    public class WorkOrderService : IGenericService<WorkOrderVm>
    {
        private readonly IGenericRepo<WorkOrderVm> _Order;
        public WorkOrderService(IGenericRepo<WorkOrderVm> Order)
        {

            _Order = Order;

        }

        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(WorkOrderVm entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(WorkOrderVm entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public WorkOrderVm Find(long id)
        {
            throw new NotImplementedException();
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();
        }

        public IList<WorkOrderVm> List()
        {
            try
            {

                return _Order.List();
            }
            catch (Exception)
            {

                throw;
            }
        }

        public IList<WorkOrderVm> Search(string term)
        {
            return _Order.Search(term);
        }

        public bool Update(WorkOrderVm entity)
        {
            return _Order.Update(entity);
        }
    }
}
