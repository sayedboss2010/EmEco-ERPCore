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
    public class WorkOrderPrintService: IGenericService<WorkOrderPrintGroupVM>
    {
        private readonly IGenericRepo<WorkOrderPrintGroupVM> _Order;
        public WorkOrderPrintService(IGenericRepo<WorkOrderPrintGroupVM> Order)
        {

            _Order = Order;

        }

        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(WorkOrderPrintGroupVM entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(WorkOrderPrintGroupVM entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public WorkOrderPrintGroupVM Find(long id)
        {
            return _Order.Find(id);
        }

        public IList<CustomOption> GetListDrop()
        {
            throw new NotImplementedException();
        }

        public IList<WorkOrderPrintGroupVM> List()
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

        public IList<WorkOrderPrintGroupVM> Search(string term)
        {
            throw new NotImplementedException();
        }

        public bool Update(WorkOrderPrintGroupVM entity)
        {
            throw new NotImplementedException();
        }
    }
}
