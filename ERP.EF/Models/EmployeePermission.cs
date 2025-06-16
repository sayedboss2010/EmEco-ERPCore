using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class EmployeePermission
{
    public int EmployeePermissionID { get; set; }

    public int EmployeeID { get; set; }

    public int PermissionID { get; set; }

    public virtual Permission Permission { get; set; }
}
