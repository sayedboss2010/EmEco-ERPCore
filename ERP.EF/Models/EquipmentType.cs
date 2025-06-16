using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// نوع المعدة
/// </summary>
public partial class EquipmentType
{
    public int EquipmentTypeID { get; set; }

    public string TypeName { get; set; }

    public string Description { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<CheckList> CheckLists { get; set; } = new List<CheckList>();

    public virtual ICollection<Equipment> Equipment { get; set; } = new List<Equipment>();
}
