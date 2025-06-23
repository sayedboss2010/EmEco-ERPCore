using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class CheckListMasterDetail
{
    public int CheckListMasterDetailID { get; set; }

    public int? CheckListMasterID { get; set; }

    public long? WorkOrderNumber { get; set; }

    public int? SparePartID { get; set; }

    public int? Quantity { get; set; }

    /// <summary>
    /// عدد القطع فى المخزن
    /// </summary>
    public int? QuantityStoreInventory { get; set; }

    public bool? IsCompleted { get; set; }

    /// <summary>
    /// تم التنفيذ بواسطة
    /// </summary>
    public int? ExecutedBy { get; set; }

    public DateTime? ExecutedAt { get; set; }

    /// <summary>
    /// ملاحظات
    /// </summary>
    public string CommentExecuted { get; set; }

    /// <summary>
    /// تم المراجعة بواسطة
    /// </summary>
    public int? ReviewedBy { get; set; }

    public DateTime? ReviewedAt { get; set; }

    /// <summary>
    /// ملاحظات
    /// </summary>
    public string CommentReviewed { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

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

    public string ImgeOld { get; set; }

    public string ImgeNew { get; set; }

    public virtual CheckListMaster CheckListMaster { get; set; }

    public virtual SparePart SparePart { get; set; }
}
