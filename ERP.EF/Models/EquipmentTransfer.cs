using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// تاريخ نقل المعدات
/// </summary>
public partial class EquipmentTransfer
{
    public int TransferID { get; set; }

    public int? EquipmentLocationID { get; set; }

    public string FromLocation { get; set; }

    public string ToLocation { get; set; }

    public DateTime? TransferDate { get; set; }

    public int? ResponsiblePersonID { get; set; }

    public string TransferReason { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual EquipmentLocation EquipmentLocation { get; set; }

    public virtual Employee ResponsiblePerson { get; set; }
}
