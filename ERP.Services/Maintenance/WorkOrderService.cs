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
    public class WorkOrderService : IGenericService<WorkOrderGroupVM>
    {
        private readonly IGenericRepo<WorkOrderGroupVM> _Order;
        public WorkOrderService(IGenericRepo<WorkOrderGroupVM> Order)
        {

            _Order = Order;

        }

        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(WorkOrderGroupVM entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(WorkOrderGroupVM entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public WorkOrderGroupVM Find(long id)
        {
            return _Order.Find(id);
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();
        }

        public IList<WorkOrderGroupVM> List()
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

        public IList<WorkOrderGroupVM> Search(string term)
        {
            return _Order.Search(term);
        }

        public bool Update(WorkOrderGroupVM entity)
        {
            return _Order.Update(entity);
        }
    }
}
