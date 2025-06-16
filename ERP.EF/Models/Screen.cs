using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class Screen
{
    public int ScreenID { get; set; }

    public string ScreenName { get; set; }

    public string Description { get; set; }

    public virtual ICollection<PermissionScreen> PermissionScreens { get; set; } = new List<PermissionScreen>();
}
