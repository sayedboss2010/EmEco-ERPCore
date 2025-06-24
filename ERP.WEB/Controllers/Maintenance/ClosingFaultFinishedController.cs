using ERP.Services.Generic;
using ERP.VM.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers.Maintenance
{
    public class ClosingFaultFinishedController : Controller
    {
        private readonly IGenericService<ClosingFaultFinIshedGroupVm> _Check;

        public ClosingFaultFinishedController(IGenericService<ClosingFaultFinIshedGroupVm> Check)
        {
            _Check = Check;

        }

        public IActionResult Home()
        {
            var data = _Check.List();
            return View(data);
        }
    }
}
