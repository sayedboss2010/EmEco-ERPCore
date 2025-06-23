using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// قطع الغيار
/// </summary>
public partial class SparePart
{
    public int SparePartID { get; set; }

    public int? EquipmentID { get; set; }

    public int? SparePartTypeID { get; set; }

    public string SparePartName { get; set; }

    public int? Quantity { get; set; }

    public string SerialNumber { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<CheckListMasterDetail> CheckListMasterDetails { get; set; } = new List<CheckListMasterDetail>();

    public virtual Equipment Equipment { get; set; }

    public virtual SparePartType SparePartType { get; set; }

    public virtual ICollection<StoreInventory> StoreInventories { get; set; } = new List<StoreInventory>();
}
