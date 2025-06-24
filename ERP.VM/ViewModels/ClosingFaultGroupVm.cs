using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.VM.ViewModels
{
    public class ClosingFaultGroupVm
    {
        public long WorkOrderNumber { get; set; }
        public int? UpdatedBy { get; set; }
        public int? CheckListMasterDetailID { get; set; }

        public IFormFile oldImage { get; set; }
        public IFormFile newImage { get; set; }

        public List<WorkOrderVm> Details { get; set; }
        public List<CheckListMasterDetailVm> CheckListMasterDetails { get; set; } = new List<CheckListMasterDetailVm>();

    }
}
