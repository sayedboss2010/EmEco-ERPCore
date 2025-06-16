using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class Plan
{
    public int PlanID { get; set; }

    public string PlanName { get; set; }

    public string DescriptionPlan { get; set; }

    public DateTime? StartDate { get; set; }

    public DateTime? EndDate { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public virtual ICollection<CheckListMaster> CheckListMasters { get; set; } = new List<CheckListMaster>();

    public virtual ICollection<EquipmentLocationPlan> EquipmentLocationPlans { get; set; } = new List<EquipmentLocationPlan>();
}
