using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.VM.ViewModels
{
    public class WorkOrderVm
    {


          public long? WorkOrderNumber { get; set; }

        public int WorkOrderID { get; set; }

        public int? CheckListMasterDetailID { get; set; }

        public int? SparePartID { get; set; }

        /// <summary>
        /// رقم امر العمل
        /// </summary>
        public int? InventoryID { get; set; }

        /// <summary>
        /// الكمية المطلوبة
        /// </summary>
        public int? Quantity { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedAt { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public bool? IsActive { get; set; }

        public bool? IsDeleted { get; set; }

        public bool? InstallationStatus { get; set; }

        public virtual CheckListMasterDetailVm CheckListMasterDetail { get; set; }

        public virtual SparePartVm SparePart { get; set; }


        public string CreatedByUser { get; set; }
        public string Createddate { get; set; }

        public string CheckItem { get; set; }
        public int? EquipmentTypeID { get; set; }
        public string TypeName { get; set; }
        public string EquipmentName { get; set; }
        public string LocationName { get; set; }
        public string planName { get; set; }
        public string? SparePartName { get; set; }

        public string? SparePartTypeName { get; set; }
        public string? EquipmentLocationsName { get; set; }

        public virtual List<int> Ids { get; set; } = new List<int>();


    }
}
