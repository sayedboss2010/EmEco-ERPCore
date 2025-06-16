using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// نوع قطع الغيار
/// </summary>
public partial class SparePartType
{
    public int SparePartTypeID { get; set; }

    public string TypeName { get; set; }

    public string Description { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<SparePart> SpareParts { get; set; } = new List<SparePart>();
}
