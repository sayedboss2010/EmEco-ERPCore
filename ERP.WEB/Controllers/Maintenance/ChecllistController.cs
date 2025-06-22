using Azure.Core;
using ERP.EF.Models;
using ERP.Services.Generic;
using ERP.Services.Maintenance;
using ERP.VM.HelperClasses;
using ERP.VM.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Numerics;

namespace ERP.WEB.Controllers.Maintenance
{
    public class ChecllistController : Controller
    {
        private readonly ICheckListService _Check;

        public ChecllistController(ICheckListService Check)
        {
            _Check = Check;
          
        }
        public IActionResult Index()
        {

            var lstListDropLocation = _Check.GetListDropLocation();
            ViewBag.ListDropLocation = new SelectList(lstListDropLocation, "Id", "NameAr");

            var lstListDropEquipmentTypes = _Check.GetListDropEquipmentTypes();
            ViewBag.ListDropEquipmentTypes = new SelectList(lstListDropEquipmentTypes, "Id", "NameAr");

            var lstListDropSparePartType = _Check.GetListDropSparePartType();
            ViewBag.ListDropSparePartType = new SelectList(lstListDropSparePartType, "Id", "NameAr");

            var lstListDropPlan = _Check.GetListDropPlan();
            ViewBag.ListDropPlan = new SelectList(lstListDropPlan, "Id", "NameAr");

            return View();
        }

        [HttpGet]
        public IActionResult GetEquipment(int EquipmentTypeID)
        {
            List<CustomOption> CenterList = new List<CustomOption>();
            var lstEquipment = _Check.GetListDropEquipment(EquipmentTypeID);
            return Json(new SelectList(lstEquipment, "Id", "NameAr"));
        }

        [HttpGet]
        public IActionResult datalist(int LocationID, int EquipmentTypeID, int EquipmentID)
        {
           
           var data = _Check.FinddataChecKlist(LocationID, EquipmentID, EquipmentTypeID);
            return Json(new { equipment= data.EquipmentLocationVm, checklist = data.CheckListVm });
       }

        [HttpPost]
        public IActionResult savadata(int checklistid, int LocationID, int EquipmentID, int PlanID,int EquipmentLocationID)
        {


            string id = Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value;
            if (id == null)
            {
                return Redirect("/account/login");


            }
            CheckListMasterVm checkListMasterdata = new CheckListMasterVm();

            int userId = int.Parse(Request.Cookies.FirstOrDefault(x => x.Key == "UserId").Value);

            checkListMasterdata.CheckListID = checklistid;
            checkListMasterdata.PlanID = PlanID;
            checkListMasterdata.LocationID = LocationID;
            checkListMasterdata.EquipmentID = EquipmentID;
            checkListMasterdata.CreatedBy = userId;
            checkListMasterdata.EquipmentLocationID = EquipmentLocationID;

            var lstEquipment = _Check.Add(checkListMasterdata);

            return Json(lstEquipment);
        }

        [HttpGet]
        public IActionResult GetSparePart(int SparePartTypeID,int EquipmentID)
        {
            List<CustomOption> CenterList = new List<CustomOption>();
            var lstEquipment = _Check.GetListDropSparePart(EquipmentID, SparePartTypeID);
            return Json(new SelectList(lstEquipment, "Id", "NameAr"));
        }

        [HttpPost]
        public IActionResult savadataDetails(int checklistid, int LocationID, int EquipmentID, int PlanID,  List<CheckListMasterDetailVm> products,int EquipmentLocationID)
        {


            string id = Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value;
            if (id == null)
            {
                return Redirect("/account/login");


            }
            CheckListMasterVm checkListMasterdata = new CheckListMasterVm();

            int userId = int.Parse(Request.Cookies.FirstOrDefault(x => x.Key == "UserId").Value);
            checkListMasterdata.CheckListMasterDetails = products;
            checkListMasterdata.CheckListID = checklistid;
            checkListMasterdata.PlanID = PlanID;
            checkListMasterdata.LocationID = LocationID;
            checkListMasterdata.EquipmentID = EquipmentID;
            checkListMasterdata.CreatedBy = userId;
            checkListMasterdata.EquipmentLocationID = EquipmentLocationID;


            var lstEquipment = _Check.Add(checkListMasterdata);

            return Json(lstEquipment);
        }


    }
}
