﻿using ClosedXML.Excel;
using ERP.Services.Generic;
using ERP.VM.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers.Lookups
{
    public class LKLocationsController : Controller
    {
        private readonly IGenericService<LocationVm> _LKloc;

        public LKLocationsController(IGenericService<LocationVm> LKloc)
        {
            _LKloc = LKloc;
        }

        public IActionResult Index()
        {
            var langCook = Request.Cookies.FirstOrDefault(c => c.Key == "lang").Value;
            var lang = string.IsNullOrEmpty(langCook) ? "ar" : langCook;
            var txt = lang == "ar" ? "ArName" : "EnName";

            ViewBag.Search = "";

            var lst = _LKloc.List();

            var isAjax = Request.Headers["X-Requested-With"] == "XMLHttpRequest";
            return isAjax
            ? (ActionResult)PartialView("_PartialAllLKLocation", lst)
            : View(lst);
        }

        public IActionResult Add(string arName)
        {
            LocationVm LocationVm = new()
            {
                LocationID = 0,
                LocationName = arName,             
                CreatedBy = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
            };

            if (!_LKloc.CheckExist(LocationVm))
            {
                return Json(-1);
            }

            return Json(_LKloc.Add(LocationVm));
        }

        public IActionResult GetById(int id)
        {
            return Json(_LKloc.Find(id));
        }

        public IActionResult Edit(int id, string arName)
        {
            LocationVm LocationVm = new()
            {
                LocationID = id,
                LocationName = arName,
                UpdatedBy = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value)
            };

            if (!_LKloc.CheckExist(LocationVm))
            {
                return Json(-1);
            }

            return Json(_LKloc.Update(LocationVm));
        }

        public IActionResult Delete(int id)
        {
            var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
            return Json(_LKloc.Delete(id, userId));
        }

        public IActionResult Search(string term = "")
        {
            ViewBag.Search = term;
            return PartialView("_PartialAllLKLocation", _LKloc.Search(term));
        }

        public IActionResult PrintData(string term = "")
        {
            if (string.IsNullOrEmpty(term))
            {
                return Json(_LKloc.List());
            }

            ViewBag.Search = term;
            return Json(_LKloc.Search(term));
        }
        public IActionResult Activate(int id, int isActive)
        {
            var userId = int.Parse(Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value);
            var active = isActive != 0;



            return Json(_LKloc.ActivateEntity(id, active, userId));
        }

        //*********************************************************************//
        public IActionResult ExportToExcel(string term = "")
        {
            var lst = string.IsNullOrEmpty(term) ? _LKloc.List() : _LKloc.Search(term);

            if (!lst.Any())
            {
                return Redirect(Request.GetTypedHeaders().Referer.ToString());
            }

            var dt = GetDataTableData(lst.ToList());

            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dt, "Location");
                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Location.xlsx");
                }
            }
        }

        private System.Data.DataTable GetDataTableData(List<LocationVm> lst)
        {
            var langCook = Request.Cookies.FirstOrDefault(c => c.Key == "lang").Value;
            var lang = string.IsNullOrEmpty(langCook) ? "ar" : langCook;

            var dt = new System.Data.DataTable();

            dt.Columns.Add("");
            dt.Columns.Add("");

            var row = dt.NewRow();
            row[0] = lang == "ar" ? "الاسم بالعربية" : "Arabic Name";

            dt.Rows.Add(row);

            foreach (var item in lst)
            {
                row = dt.NewRow();
                row[0] = item.LocationName;

                dt.Rows.Add(row);
            }

            return dt;
        }
    }
}
