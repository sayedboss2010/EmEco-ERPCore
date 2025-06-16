using ClosedXML.Excel;
using ERP.Services.Generic;
using ERP.VM;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers;

//[AreaAuthentication("DataEntry")]
//public class CountryController : Controller
//{
//    private readonly IGenericService<HrCountryVm> _Country;

//    public CountryController(IGenericService<HrCountryVm> Country)
//    {
//        _Country = Country;
//    }

//    public IActionResult Index()
//    {
//        ViewBag.Search = "";

//        var lst = _Country.List();

//        var isAjax = Request.Headers["X-Requested-With"] == "XMLHttpRequest";
//        return isAjax
//        ? (ActionResult)PartialView("_PartialAllCountrys", lst)
//        : View(lst);
//    }
//    public IActionResult Add(string arName, string enName, string facs = "")
//    {
//        HrCountryVm CountryVm = new()
//        {
//            Id = 0,
//            NameAr = arName,
//            NameEn = enName,
//            CreatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_Country.CheckExist(CountryVm))
//        {
//            return Json(-1);
//        }

//        return Json(_Country.Add(CountryVm));
//    }

//    public IActionResult GetById(byte id)
//    {
//        return Json(_Country.Find(id));
//    }

//    public IActionResult Edit(byte id, string arName, string enName, string facs = "")
//    {
//        HrCountryVm CountryVm = new()
//        {
//            Id = id,
//            NameAr = arName,
//            NameEn = enName,
//            UpdatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_Country.CheckExist(CountryVm))
//        {
//            return Json(-1);
//        }

//        return Json(_Country.Update(CountryVm));
//    }

//    public IActionResult Delete(byte id)
//    {
//        var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
//        return Json(_Country.Delete(id, userId));
//    }

//    public IActionResult Search(string term = "")
//    {
//        ViewBag.Search = term;
//        return PartialView("_PartialAllCountrys", _Country.Search(term));
//    }

//    public IActionResult PrintData(string term = "")
//    {
//        if (string.IsNullOrEmpty(term))
//        {
//            return Json(_Country.List());
//        }

//        ViewBag.Search = term;
//        return Json(_Country.Search(term));
//    }

//    //*********************************************************************//
//    public IActionResult ExportToExcel(string term = "")
//    {
//        var lst = string.IsNullOrEmpty(term) ? _Country.List() : _Country.Search(term);

//        if (!lst.Any())
//        {
//            return Redirect(Request.GetTypedHeaders().Referer.ToString());
//        }

//        var dt = GetDataTableData(lst.ToList());

//        using (XLWorkbook wb = new XLWorkbook())
//        {
//            wb.Worksheets.Add(dt, "Country");
//            using (MemoryStream stream = new MemoryStream())
//            {
//                wb.SaveAs(stream);
//                return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Country.xlsx");
//            }
//        }
//    }

//    private System.Data.DataTable GetDataTableData(List<HrCountryVm> lst)
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

