using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// معدات الموقع
/// </summary>
public partial class EquipmentLocation
{
    public int EquipmentLocationID { get; set; }

    public int? LocationID { get; set; }

    public int? EquipmentID { get; set; }

    public string SerialNumber { get; set; }

    public string EquipmentName { get; set; }

    public DateTime? EntryDate { get; set; }

    public int? ResponsiblePersonID { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<CheckListMaster> CheckListMasters { get; set; } = new List<CheckListMaster>();

    public virtual Equipment Equipment { get; set; }

    public virtual ICollection<EquipmentLocationPlan> EquipmentLocationPlans { get; set; } = new List<EquipmentLocationPlan>();

    public virtual ICollection<EquipmentTransfer> EquipmentTransfers { get; set; } = new List<EquipmentTransfer>();

    public virtual Location Location { get; set; }

    public virtual Employee ResponsiblePerson { get; set; }
}
