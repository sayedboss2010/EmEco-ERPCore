using ERP.Services.Generic;
using ERP.Services.Maintenance;
using ERP.VM.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers.Maintenance
{
    public class ClosingFaultController : Controller
    {
        private readonly IGenericService<ClosingFaultVm> _Check;

        public ClosingFaultController(IGenericService<ClosingFaultVm> Check)
        {
            _Check = Check;

        }

        public IActionResult Index()
        {
            var data=_Check.List();
            return View(data);
        }

        public IActionResult Edit(int id)
        {
            var data = _Check.Find(id);
            return View(data);
        }
        [HttpPost]
        public IActionResult Edit(int CheckListMasterDetailID,IFormFile before, IFormFile After)
        {

            string id = Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value;
            if (id == null)
            {
                return Redirect("/account/login");

            }
            int userId = int.Parse(Request.Cookies.FirstOrDefault(x => x.Key == "UserId").Value);
            ClosingFaultVm data = new ClosingFaultVm();
            data.CheckListMasterDetailID=CheckListMasterDetailID;
            data.oldImage = before;
            data.newImage = After;
            data.CreatedByuser = userId;

            _Check.Update(data);
            
            return RedirectToAction("Index");
        }
    }
}
