using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// مخزن وقطع الغيار
/// </summary>
public partial class StoreInventory
{
    public int StoreInventoryID { get; set; }

    public int? SparePartID { get; set; }

    public int? StoreID { get; set; }

    public int? Quantity { get; set; }

    public DateTime? EntryDate { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual SparePart SparePart { get; set; }

    public virtual Store Store { get; set; }
}
