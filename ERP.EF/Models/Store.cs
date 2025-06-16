using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// المخزن
/// </summary>
public partial class Store
{
    public int StoreID { get; set; }

    public string StoreName { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public int? LocationID { get; set; }

    public virtual Location Location { get; set; }

    public virtual ICollection<StoreInventory> StoreInventories { get; set; } = new List<StoreInventory>();
}
