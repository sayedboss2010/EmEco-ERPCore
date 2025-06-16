using ClosedXML.Excel;
using ERP.Services.Generic;
using ERP.VM;
using Microsoft.AspNetCore.Mvc;


namespace ERP.WEB.Controllers;

//[AreaAuthentication("DataEntry")]
//public class ShiftTypeController : Controller
//{
//    private readonly IGenericService<HrShiftTypeVm> _ShiftType;

//    public ShiftTypeController(IGenericService<HrShiftTypeVm> ShiftType)
//    {
//        _ShiftType = ShiftType;
//        //_faculty = faculty;
//    }

//    public IActionResult Index()
//    {
//        var langCook = Request.Cookies.FirstOrDefault(c => c.Key == "lang").Value;
//        var lang = string.IsNullOrEmpty(langCook) ? "ar" : langCook;
//        var txt = lang == "ar" ? "NameAr" : "NameEn";

//        // ViewBag.FacList = new SelectList(_faculty.GetListDrop(), "Id", txt);

//        var lst = _ShiftType.List();

//        var isAjax = Request.Headers["X-Requested-With"] == "XMLHttpRequest";
//        return isAjax
//        ? (ActionResult)PartialView("_PartialAllShiftType", lst)
//        : View(lst);
//    }
//    public IActionResult Add(string arName, string enName, TimeSpan StartTime, TimeSpan EndTime, string facs = "")
//    {
//        HrShiftTypeVm ShiftTypeVm = new()
//        {
//            Id = 0,
//            NameAr = arName,
//            NameEn = enName,
//            StartTime = StartTime,
//            EndTime = EndTime,
//            // FacsIds = facs?.Split(',')?.Select(int.Parse)?.ToList(),
//            CreatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_ShiftType.CheckExist(ShiftTypeVm))
//        {
//            return Json(-1);
//        }

//        return Json(_ShiftType.Add(ShiftTypeVm));
//    }

//    public IActionResult GetById(byte id)
//    {
//        return Json(_ShiftType.Find(id));
//    }

//    public IActionResult Edit(byte id, string arName, string enName, TimeSpan StartTime, TimeSpan EndTime, string facs = "")
//    {
//        HrShiftTypeVm ShiftTypeVm = new()
//        {
//            Id = id,
//            NameAr = arName,
//            NameEn = enName,
//            StartTime = StartTime,
//            EndTime = EndTime,
//            //FacsIds = facs?.Split(',')?.Select(int.Parse)?.ToList(),
//            UpdatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_ShiftType.CheckExist(ShiftTypeVm))
//        {
//            return Json(-1);
//        }

//        return Json(_ShiftType.Update(ShiftTypeVm));
//    }

//    public IActionResult Delete(byte id)
//    {
//        var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
//        return Json(_ShiftType.Delete(id, userId));
//    }

//    public IActionResult Search(string term = "")
//    {
//        ViewBag.Search = term;
//        return PartialView("_PartialAllShiftType", _ShiftType.Search(term));
//    }

//    public IActionResult PrintData(string term = "")
//    {
//        if (string.IsNullOrEmpty(term))
//        {
//            return Json(_ShiftType.List());
//        }

//        ViewBag.Search = term;
//        return Json(_ShiftType.Search(term));
//    }

//    //*********************************************************************//
//    public IActionResult ExportToExcel(string term = "")
//    {
//        var lst = string.IsNullOrEmpty(term) ? _ShiftType.List() : _ShiftType.Search(term);

//        if (!lst.Any())
//        {
//            return Redirect(Request.GetTypedHeaders().Referer.ToString());
//        }

//        var dt = GetDataTableData(lst.ToList());

//        using (XLWorkbook wb = new XLWorkbook())
//        {
//            wb.Worksheets.Add(dt, "ShiftType");
//            using (MemoryStream stream = new MemoryStream())
//            {
//                wb.SaveAs(stream);
//                return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "ShiftType.xlsx");
//            }
//        }
//    }

//    private System.Data.DataTable GetDataTableData(List<HrShiftTypeVm> lst)
//    {
//        var dt = new System.Data.DataTable();

//        dt.Columns.Add("");
//        dt.Columns.Add("");
//        dt.Columns.Add("");
//        dt.Columns.Add("");

//        var row = dt.NewRow();
//        row[0] = "الاسم بالعربية";
//        row[1] = "الاسم بالإنجليزية";
//        row[2] = "بداية الوقت";
//        row[3] = "نهاية الوقت ";

//        dt.Rows.Add(row);

//        foreach (var item in lst)
//        {
//            row = dt.NewRow();
//            row[0] = item.NameAr;
//            row[1] = item.NameEn;
//            row[2] = item.StartTime;
//            row[3] = item.EndTime;

//            dt.Rows.Add(row);
//        }

//        return dt;
//    }
//}
