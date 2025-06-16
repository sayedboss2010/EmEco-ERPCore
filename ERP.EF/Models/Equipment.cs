using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// المعدات
/// </summary>
public partial class Equipment
{
    public int EquipmentID { get; set; }

    public string EquipmentName { get; set; }

    public string SerialNumber { get; set; }

    public int? EquipmentTypeID { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<EquipmentLocation> EquipmentLocations { get; set; } = new List<EquipmentLocation>();

    public virtual EquipmentType EquipmentType { get; set; }

    public virtual ICollection<SparePart> SpareParts { get; set; } = new List<SparePart>();
}
