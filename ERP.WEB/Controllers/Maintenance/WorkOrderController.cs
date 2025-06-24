using ERP.Services.Generic;
using ERP.VM.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers.Maintenance
{
    public class WorkOrderController : Controller
    {
        private readonly IGenericService<WorkOrderGroupVM> _Work;

        public WorkOrderController(IGenericService<WorkOrderGroupVM> Work)
        {
            _Work = Work;

        }
        public IActionResult Index()
        {
            var data = _Work.List();
            return View(data);

        }
        [HttpGet]
        public IActionResult print(long Id )
        {
            string id = Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value;
            if (id == null)
            {
                return Redirect("/account/login");


            }

            var data = _Work.Find(Id);


            return View(data);
           
        }
        [HttpPost]
        public IActionResult YourAction([FromBody] long WorkOrderNumberId)
        {

            string id = Request.Cookies.FirstOrDefault(c => c.Key == "UserId").Value;
            if (id == null)
            {
                return Redirect("/account/login");


            }
            int userId = int.Parse(Request.Cookies.FirstOrDefault(x => x.Key == "UserId").Value);

            WorkOrderGroupVM data = new WorkOrderGroupVM();
            data.UpdatedBy = userId;
            data.WorkOrderNumber = WorkOrderNumberId;
            var dataresponse = _Work.Update(data);
            if (dataresponse == true)
            {
                return Ok(); // مهمة علشان JS يعرف يطبع

            }
            else
            {
                return null; // مهمة علشان JS يعرف يطبع

            }
        }


    }
}
