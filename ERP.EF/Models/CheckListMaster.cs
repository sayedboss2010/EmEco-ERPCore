using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class CheckListMaster
{
    public int CheckListMasterID { get; set; }

    public int? CheckListID { get; set; }

    public int? EquipmentLocationID { get; set; }

    /// <summary>
    /// فيها مشكلة ام لا
    /// </summary>
    public bool? ProcessProblem { get; set; }

    public DateTime? ProcessDate { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    /// <summary>
    /// مين عمل مراجعه للعملية
    /// </summary>
    public int? ReviewedBy { get; set; }

    public DateTime? ReviewedAt { get; set; }

    /// <summary>
    /// الخطة
    /// </summary>
    public int? PlanID { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    /// <summary>
    /// الاجراءات كلها خلصت
    /// </summary>
    public bool? isClosed { get; set; }

    /// <summary>
    /// تاريخ غلق العملية
    /// </summary>
    public DateTime? isClosedDate { get; set; }

    public virtual CheckList CheckList { get; set; }

    public virtual ICollection<CheckListMasterDetail> CheckListMasterDetails { get; set; } = new List<CheckListMasterDetail>();

    public virtual EquipmentLocation EquipmentLocation { get; set; }

    public virtual Plan Plan { get; set; }
}
