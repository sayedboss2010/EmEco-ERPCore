using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class EquipmentLocationPlan
{
    public int EquipmentLocationPlanID { get; set; }

    public int PlanID { get; set; }

    public int EquipmentLocationID { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public virtual EquipmentLocation EquipmentLocation { get; set; }

    public virtual Plan Plan { get; set; }
}
