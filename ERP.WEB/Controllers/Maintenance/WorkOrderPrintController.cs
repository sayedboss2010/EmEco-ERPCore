using ERP.Services.Generic;
using ERP.VM.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers.Maintenance
{
    public class WorkOrderPrintController : Controller
    {
        private readonly IGenericService<WorkOrderPrintGroupVM> _Work;

        public WorkOrderPrintController(IGenericService<WorkOrderPrintGroupVM> Work)
        {
            _Work = Work;

        }
        public IActionResult Index()
        {
            var data = _Work.List();
            return View(data);

        }
        [HttpGet]
        public IActionResult print(long Id)
        {
            string id = Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value;
            if (id == null)
            {
                return Redirect("/account/login");


            }

            var data = _Work.Find(Id);


            return View(data);

        }
    }
}
