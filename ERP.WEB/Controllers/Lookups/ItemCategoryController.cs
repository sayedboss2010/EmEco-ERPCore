using ClosedXML.Excel;
using ERP.Services.Generic;
using ERP.VM;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers;

//[AreaAuthentication("Stockes")]
//public class ItemCategoryController : Controller
//{
//    private readonly IGenericService<GrItemCategoriyVm> _itemCategoriy;

//    public ItemCategoryController(IGenericService<GrItemCategoriyVm> itemCategoriy)
//    {
//        _itemCategoriy = itemCategoriy;
//    }
//    public IActionResult Index()
//    {
//        ViewBag.Search = "";

//        var lst = _itemCategoriy.List();

//        var isAjax = Request.Headers["X-Requested-With"] == "XMLHttpRequest";
//        return isAjax
//        ? (ActionResult)PartialView("_PartialAllItemCategories", lst)
//        : View(lst);
//    }
//    public IActionResult Add(string arName)
//    {
//        GrItemCategoriyVm itemCategoriyVm = new()
//        {
//            Id = 0,
//            CatName = arName,
//            UserCreationId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_itemCategoriy.CheckExist(itemCategoriyVm))
//        {
//            return Json(-1);
//        }

//        return Json(_itemCategoriy.Add(itemCategoriyVm));
//    }

//    public IActionResult GetById(int id)
//    {
//        return Json(_itemCategoriy.Find(id));
//    }
//    public IActionResult Edit(byte id, string arName)
//    {
//        GrItemCategoriyVm grItemCategoriyVm = new()
//        {
//            Id = id,
//            CatName = arName,

//            UserUpdationId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
//        };

//        if (!_itemCategoriy.CheckExist(grItemCategoriyVm))
//        {
//            return Json(-1);
//        }

//        return Json(_itemCategoriy.Update(grItemCategoriyVm));
//    }

//    public IActionResult Delete(int id)
//    {
//        var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
//        return Json(_itemCategoriy.Delete(id, userId));
//    }

//    public IActionResult Search(string term = "")
//    {
//        ViewBag.Search = term;
//        return PartialView("_PartialAllItemCategories", _itemCategoriy.Search(term));
//    }

//    public IActionResult PrintData(string term = "")
//    {
//        if (string.IsNullOrEmpty(term))
//        {
//            return Json(_itemCategoriy.List());
//        }

//        ViewBag.Search = term;
//        return Json(_itemCategoriy.Search(term));
//    }

//    //*********************************************************************//
//    public IActionResult ExportToExcel(string term = "")
//    {
//        var lst = string.IsNullOrEmpty(term) ? _itemCategoriy.List() : _itemCategoriy.Search(term);

//        if (!lst.Any())
//        {
//            return Redirect(Request.GetTypedHeaders().Referer.ToString());
//        }

//        var dt = GetDataTableData(lst.ToList());

//        using (XLWorkbook wb = new XLWorkbook())
//        {
//            wb.Worksheets.Add(dt, "category");
//            using (MemoryStream stream = new MemoryStream())
//            {
//                wb.SaveAs(stream);
//                return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "category.xlsx");
//            }
//        }
//    }

//    private System.Data.DataTable GetDataTableData(List<GrItemCategoriyVm> lst)
//    {
//        var dt = new System.Data.DataTable();

//        dt.Columns.Add("");


//        var row = dt.NewRow();
//        row[0] = "الاسم بالعربية";


//        dt.Rows.Add(row);

//        foreach (var item in lst)
//        {
//            row = dt.NewRow();
//            row[0] = item.CatName;


//            dt.Rows.Add(row);
//        }

//        return dt;
//    }

//    public IActionResult ActivateEntity(long id, int isActive)
//    {
//        var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
//        var active = isActive != 0;

//        return Json(_itemCategoriy.ActivateEntity(id, active, userId));
//    }
//}