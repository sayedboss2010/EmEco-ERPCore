using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.VM.ViewModels
{
    public class WorkOrderPrintGroupVM
    {
        public long WorkOrderNumber { get; set; }
        public int? UpdatedBy { get; set; }

        public List<WorkOrderVm> Details { get; set; }
    }
}
