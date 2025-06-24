using ERP.Services.Generic;
using ERP.Services.Maintenance;
using ERP.VM.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace ERP.WEB.Controllers.Maintenance
{
    public class ClosingFaultController : Controller
    {
        private readonly IGenericService<ClosingFaultGroupVm> _Check;

        public ClosingFaultController(IGenericService<ClosingFaultGroupVm> Check)
        {
            _Check = Check;

        }

        public IActionResult Home()
        {
            var data = _Check.List();
            return View(data);
        }

        public IActionResult Edit(int id)
        {
            //var lstListDropstore = _Check.GetListDrop();
            //ViewBag.ListDropstore = new SelectList(lstListDropstore, "Id", "NameAr");

            var data = _Check.Find(id);
            return View(data);
        }
        [HttpPost]
        public IActionResult Edit(int CheckListMasterDetailID, IFormFile before, IFormFile After)
        {

            string id = Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value;
            if (id == null)
            {
                return Redirect("/account/login");

            }
            int userId = int.Parse(Request.Cookies.FirstOrDefault(x => x.Key == "UserId").Value);
            ClosingFaultGroupVm data = new ClosingFaultGroupVm();
            data.CheckListMasterDetailID = CheckListMasterDetailID;
            data.oldImage = before;
            data.newImage = After;
            data.UpdatedBy = userId;
            //data.StoreID = StoreID;

            var dataresult = _Check.Update(data);
            if (dataresult == true)
            {
                return RedirectToAction("Home");
            }
            else
            {

                TempData["NoQuantityavaiable"] = 1;
                return RedirectToAction("Edit", new { id = CheckListMasterDetailID });
            }

        }
    }
}
