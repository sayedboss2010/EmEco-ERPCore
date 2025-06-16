
using ClosedXML.Excel;
using ERP.Services.Generic;
using ERP.VM;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers;

//[AreaAuthentication("DataEntry")]
//public class ErrandsTypeController : Controller
//{
//    private readonly IGenericService<HrErrandsTypeVm> _ErrandsType;

//    public ErrandsTypeController(IGenericService<HrErrandsTypeVm> ErrandsType)
//    {
//        _ErrandsType = ErrandsType;
//    }

//    public IActionResult Index()
//    {
//        var langCook = Request.Cookies.FirstOrDefault(c => c.Key == "lang").Value;
//        var lang = string.IsNullOrEmpty(langCook) ? "ar" : langCook;
//        var txt = lang == "ar" ? "NameAr" : "NameEn";

//        var lst = _ErrandsType.List();

//        var isAjax = Request.Headers["X-Requested-With"] == "XMLHttpRequest";
//        return isAjax
//        ? (ActionResult)PartialView("_PartialAllErrandsType", lst)
//        : View(lst);
//    }
//    public IActionResult Add(string arName, string enName, string facs = "")
//    {
//        HrErrandsTypeVm ErrandsTypeVm = new()
//        {
//            Id = 0,
//            NameAr = arName,
//            NameEn = enName,
//            // FacsIds = facs?.Split(',')?.Select(int.Parse)?.ToList(),
//            CreatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_ErrandsType.CheckExist(ErrandsTypeVm))
//        {
//            return Json(-1);
//        }

//        return Json(_ErrandsType.Add(ErrandsTypeVm));
//    }

//    public IActionResult GetById(byte id)
//    {
//        return Json(_ErrandsType.Find(id));
//    }

//    public IActionResult Edit(byte id, string arName, string enName, string facs = "")
//    {
//        HrErrandsTypeVm ErrandsTypeVm = new()
//        {
//            Id = id,
//            NameAr = arName,
//            NameEn = enName,
//            //FacsIds = facs?.Split(',')?.Select(int.Parse)?.ToList(),
//            UpdatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_ErrandsType.CheckExist(ErrandsTypeVm))
//        {
//            return Json(-1);
//        }

//        return Json(_ErrandsType.Update(ErrandsTypeVm));
//    }

//    public IActionResult Delete(byte id)
//    {
//        var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
//        return Json(_ErrandsType.Delete(id, userId));
//    }

//    public IActionResult Search(string term = "")
//    {
//        ViewBag.Search = term;
//        return PartialView("_PartialAllErrandsType", _ErrandsType.Search(term));
//    }

//    public IActionResult PrintData(string term = "")
//    {
//        if (string.IsNullOrEmpty(term))
//        {
//            return Json(_ErrandsType.List());
//        }

//        ViewBag.Search = term;
//        return Json(_ErrandsType.Search(term));
//    }

//    //*********************************************************************//
//    public IActionResult ExportToExcel(string term = "")
//    {
//        var lst = string.IsNullOrEmpty(term) ? _ErrandsType.List() : _ErrandsType.Search(term);

//        if (!lst.Any())
//        {
//            return Redirect(Request.GetTypedHeaders().Referer.ToString());
//        }

//        var dt = GetDataTableData(lst.ToList());

//        using (XLWorkbook wb = new XLWorkbook())
//        {
//            wb.Worksheets.Add(dt, "ErrandsType");
//            using (MemoryStream stream = new MemoryStream())
//            {
//                wb.SaveAs(stream);
//                return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "ErrandsType.xlsx");
//            }
//        }
//    }

//    private System.Data.DataTable GetDataTableData(List<HrErrandsTypeVm> lst)
//    {
//        var dt = new System.Data.DataTable();

//        dt.Columns.Add("");
//        dt.Columns.Add("");

//        var row = dt.NewRow();
//        row[0] = "الاسم بالعربية";
//        row[1] = "الاسم بالإنجليزية";

//        dt.Rows.Add(row);

//        foreach (var item in lst)
//        {
//            row = dt.NewRow();
//            row[0] = item.NameAr;
//            row[1] = item.NameEn;

//            dt.Rows.Add(row);
//        }

//        return dt;
//    }
//}

