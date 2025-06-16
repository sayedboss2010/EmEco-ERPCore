using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// الموقع
/// </summary>
public partial class Location
{
    public int LocationID { get; set; }

    public string LocationName { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<EquipmentLocation> EquipmentLocations { get; set; } = new List<EquipmentLocation>();

    public virtual ICollection<Store> Stores { get; set; } = new List<Store>();
}
