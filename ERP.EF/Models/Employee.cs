using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

/// <summary>
/// الموظفين
/// </summary>
public partial class Employee
{
    /// <summary>
    /// الموظفين
    /// </summary>
    public int EmployeeID { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }

    public string JobTitle { get; set; }

    public int? CreatedBy { get; set; }

    public DateTime? CreatedAt { get; set; }

    public int? UpdatedBy { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<EquipmentLocation> EquipmentLocations { get; set; } = new List<EquipmentLocation>();

    public virtual ICollection<EquipmentTransfer> EquipmentTransfers { get; set; } = new List<EquipmentTransfer>();
}
