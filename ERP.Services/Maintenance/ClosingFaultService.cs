﻿using ERP.Repository.Repositories.Generic;
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
    public class ClosingFaultService : IGenericService<ClosingFaultGroupVm>
    {
        private readonly IGenericRepo<ClosingFaultGroupVm> _Closing;
        public ClosingFaultService(IGenericRepo<ClosingFaultGroupVm> Closing)
        {

            _Closing = Closing;

        }

        public bool ActivateEntity(long id, bool isActive, int userId)
        {
            throw new NotImplementedException();
        }

        public long Add(ClosingFaultGroupVm entity)
        {
            throw new NotImplementedException();
        }

        public bool CheckExist(ClosingFaultGroupVm entity)
        {
            throw new NotImplementedException();
        }

        public bool Delete(long id, int userId)
        {
            throw new NotImplementedException();
        }

        public ClosingFaultGroupVm Find(long id)
        {
            return _Closing.Find(id);
        }

        public IList<CustomOption> GetListDrop()
        {
           return _Closing.GetListDrop();
        }

        public IList<ClosingFaultGroupVm> List()
        {
           return  _Closing.List();
        }

        public IList<ClosingFaultGroupVm> Search(string term)
        {
            throw new NotImplementedException();
        }

        public bool Update(ClosingFaultGroupVm entity)
        {
            return _Closing.Update(entity);
        }
    }
}
