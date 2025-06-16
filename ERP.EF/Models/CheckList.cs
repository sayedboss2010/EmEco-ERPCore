using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// CheckList معدة
/// </summary>
public partial class CheckList
{
    public int CheckListID { get; set; }

    public int? EquipmentTypeID { get; set; }

    public string CheckItem { get; set; }

    public bool? IsRequired { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<CheckListMaster> CheckListMasters { get; set; } = new List<CheckListMaster>();

    public virtual EquipmentType EquipmentType { get; set; }
}
