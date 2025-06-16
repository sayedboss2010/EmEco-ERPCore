using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class Permission
{
    public int PermissionID { get; set; }

    public string PermissionName { get; set; }

    public string Description { get; set; }

    public virtual ICollection<EmployeePermission> EmployeePermissions { get; set; } = new List<EmployeePermission>();

    public virtual ICollection<PermissionScreen> PermissionScreens { get; set; } = new List<PermissionScreen>();
}
