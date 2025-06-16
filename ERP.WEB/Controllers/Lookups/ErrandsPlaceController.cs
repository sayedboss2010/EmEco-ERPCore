using ClosedXML.Excel;
using ERP.Services.Generic;
using ERP.VM;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers;

//[AreaAuthentication("DataEntry")]
//public class ErrandsPlaceController : Controller
//{
//    private readonly IGenericService<HrErrandsPlaceVm> _ErrandsPlace;

//    public ErrandsPlaceController(IGenericService<HrErrandsPlaceVm> ErrandsPlace)
//    {
//        _ErrandsPlace = ErrandsPlace;
//    }

//    public IActionResult Index()
//    {
//        ViewBag.Search = "";
//        var lst = _ErrandsPlace.List();

//        var isAjax = Request.Headers["X-Requested-With"] == "XMLHttpRequest";
//        return isAjax
//        ? (ActionResult)PartialView("_PartialAllErrandsPlace", lst)
//        : View(lst);
//    }
//    public IActionResult Add(string arName, string enName, string arAddress, string enAddress, string facs = "")
//    {
//        HrErrandsPlaceVm ErrandsPlaceVm = new()
//        {
//            Id = 0,
//            NameAr = arName,
//            NameEn = enName,
//            AddressAr = arAddress,
//            AddressEn = enAddress,
//            CreatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_ErrandsPlace.CheckExist(ErrandsPlaceVm))
//        {
//            return Json(-1);
//        }

//        return Json(_ErrandsPlace.Add(ErrandsPlaceVm));
//    }

//    public IActionResult GetById(int id)
//    {
//        return Json(_ErrandsPlace.Find(id));
//    }

//    public IActionResult Edit(int id, string arName, string enName, string arAddress, string enAddress, string facs = "")
//    {
//        HrErrandsPlaceVm ErrandsPlaceVm = new()
//        {
//            Id = id,
//            NameAr = arName,
//            NameEn = enName,
//            AddressAr = arAddress,
//            AddressEn = enAddress,

//            UpdatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_ErrandsPlace.CheckExist(ErrandsPlaceVm))
//        {
//            return Json(-1);
//        }

//        return Json(_ErrandsPlace.Update(ErrandsPlaceVm));
//    }

//    public IActionResult Delete(int id)
//    {
//        var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
//        return Json(_ErrandsPlace.Delete(id, userId));
//    }

//    public IActionResult Search(string term = "")
//    {
//        ViewBag.Search = term;
//        return PartialView("_PartialAllErrandsPlace", _ErrandsPlace.Search(term));
//    }

//    public IActionResult PrintData(string term = "")
//    {
//        if (string.IsNullOrEmpty(term))
//        {
//            return Json(_ErrandsPlace.List());
//        }

//        ViewBag.Search = term;
//        return Json(_ErrandsPlace.Search(term));
//    }

//    //*********************************************************************//
//    public IActionResult ExportToExcel(string term = "")
//    {
//        var lst = string.IsNullOrEmpty(term) ? _ErrandsPlace.List() : _ErrandsPlace.Search(term);

//        if (!lst.Any())
//        {
//            return Redirect(Request.GetTypedHeaders().Referer.ToString());
//        }

//        var dt = GetDataTableData(lst.ToList());

//        using (XLWorkbook wb = new XLWorkbook())
//        {
//            wb.Worksheets.Add(dt, "ErrandsPlace");
//            using (MemoryStream stream = new MemoryStream())
//            {
//                wb.SaveAs(stream);
//                return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "ErrandsPlace.xlsx");
//            }
//        }
//    }

//    private System.Data.DataTable GetDataTableData(List<HrErrandsPlaceVm> lst)
//    {
//        var dt = new System.Data.DataTable();

//        dt.Columns.Add("");
//        dt.Columns.Add("");
//        dt.Columns.Add("");
//        dt.Columns.Add("");

//        var row = dt.NewRow();
//        row[0] = "الاسم بالعربية";
//        row[1] = "الاسم بالإنجليزية";
//        row[2] = "العنوان بالعربية";
//        row[3] = "العنوان بالإنجليزية";

//        dt.Rows.Add(row);

//        foreach (var item in lst)
//        {
//            row = dt.NewRow();
//            row[0] = item.NameAr;
//            row[1] = item.NameEn;
//            row[2] = item.AddressAr;
//            row[3] = item.AddressAr;

//            dt.Rows.Add(row);
//        }

//        return dt;
//    }
//}
