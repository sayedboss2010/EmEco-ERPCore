using System;
using System.Collections.Generic;

namespace ERP.EF.Models;

public partial class PrUser
{
    public int Id { get; set; }

    public string UserName { get; set; }

    public string Password { get; set; }

    public int? UserTypeId { get; set; }

    public int? SectorId { get; set; }

    public string FullName { get; set; }

    public long? EmployeesId { get; set; }
}
