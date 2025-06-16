using ClosedXML.Excel;
using ERP.Services.Generic;
using ERP.VM;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace ERP.WEB.Controllers;

//[AreaAuthentication("DataEntry")]
//public class UnivercityController : Controller
//{
//    private readonly IGenericService<HrUnivercityVm> _univercity;
//    private readonly IGenericService<HrFacultyVm> _faculty;

//    public UnivercityController(IGenericService<HrUnivercityVm> univercity, IGenericService<HrFacultyVm> faculty)
//    {
//        _univercity = univercity;
//        _faculty = faculty;
//    }

//    public IActionResult Index()
//    {
//        var langCook = Request.Cookies.FirstOrDefault(c => c.Key == "lang").Value;
//        var lang = string.IsNullOrEmpty(langCook) ? "ar" : langCook;
//        var txt = lang == "ar" ? "NameAr" : "NameEn";

//        ViewBag.FacList = new SelectList(_faculty.GetListDrop(), "Id", txt);

//        ViewBag.Search = "";

//        var lst = _univercity.List();

//        var isAjax = Request.Headers["X-Requested-With"] == "XMLHttpRequest";
//        return isAjax
//        ? (ActionResult)PartialView("_PartialAllUnivercities", lst)
//        : View(lst);
//    }

//    public IActionResult Add(string arName, string enName, string facs = "")
//    {
//        HrUnivercityVm univercityVm = new()
//        {
//            Id = 0,
//            NameAr = arName,
//            NameEn = enName,
//            FacsIds = facs?.Split(',')?.Select(int.Parse)?.ToList(),
//            CreatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_univercity.CheckExist(univercityVm))
//        {
//            return Json(-1);
//        }

//        return Json(_univercity.Add(univercityVm));
//    }

//    public IActionResult GetById(byte id)
//    {
//        return Json(_univercity.Find(id));
//    }

//    public IActionResult Edit(byte id, string arName, string enName, string facs = "")
//    {
//        HrUnivercityVm univercityVm = new()
//        {
//            Id = id,
//            NameAr = arName,
//            NameEn = enName,
//            FacsIds = facs?.Split(',')?.Select(int.Parse)?.ToList(),
//            UpdatedUserId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_univercity.CheckExist(univercityVm))
//        {
//            return Json(-1);
//        }

//        return Json(_univercity.Update(univercityVm));
//    }

//    public IActionResult Delete(byte id)
//    {
//        var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
//        return Json(_univercity.Delete(id, userId));
//    }

//    public IActionResult Search(string term = "")
//    {
//        ViewBag.Search = term;
//        return PartialView("_PartialAllUnivercities", _univercity.Search(term));
//    }

//    public IActionResult PrintData(string term = "")
//    {
//        if (string.IsNullOrEmpty(term))
//        {
//            return Json(_univercity.List());
//        }

//        ViewBag.Search = term;
//        return Json(_univercity.Search(term));
//    }

//    //*********************************************************************//
//    public IActionResult ExportToExcel(string term = "")
//    {
//        var lst = string.IsNullOrEmpty(term) ? _univercity.List() : _univercity.Search(term);

//        if (!lst.Any())
//        {
//            return Redirect(Request.GetTypedHeaders().Referer.ToString());
//        }

//        var dt = GetDataTableData(lst.ToList());

//        using (XLWorkbook wb = new XLWorkbook())
//        {
//            wb.Worksheets.Add(dt, "univercity");
//            using (MemoryStream stream = new MemoryStream())
//            {
//                wb.SaveAs(stream);
//                return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "univercity.xlsx");
//            }
//        }
//    }

//    private System.Data.DataTable GetDataTableData(List<HrUnivercityVm> lst)
//    {
//        var langCook = Request.Cookies.FirstOrDefault(c => c.Key == "lang").Value;
//        var lang = string.IsNullOrEmpty(langCook) ? "ar" : langCook;

//        var dt = new System.Data.DataTable();

//        dt.Columns.Add("");
//        dt.Columns.Add("");

//        var row = dt.NewRow();
//        row[0] = lang == "ar" ? "الاسم بالعربية" : "Arabic Name";
//        row[1] = lang == "ar" ? "الاسم بالإنجليزية" : "English Name";

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