using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP.EF.Models;

public partial class DataToExcel
{
    public int Id { get; set; }

    public string TableName { get; set; }

    public long? LastReadedId { get; set; }
}