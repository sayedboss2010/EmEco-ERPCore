using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.VM.ViewModels
{
    public class WorkOrderGroupVM
    {
        public long WorkOrderNumber { get; set; }
        public List<WorkOrderVm> Details { get; set; }
    }
   
}
