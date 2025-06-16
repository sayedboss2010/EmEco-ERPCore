using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class PermissionScreen
{
    public int PermissionScreenID { get; set; }

    public int PermissionID { get; set; }

    public int ScreenID { get; set; }

    public virtual Permission Permission { get; set; }

    public virtual Screen Screen { get; set; }
}
