using ERP.Services.Generic;
using ERP.VM;
using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers;

//[AreaAuthentication("DataEntry")]
//public class FacultyController : Controller
//{
//    private readonly IGenericService<HrFacultyVm> _faculty;

//    public FacultyController(IGenericService<HrFacultyVm> faculty)
//    {
//        _faculty = faculty;
//    }

//    public IActionResult Index()
//    {
//        return View(_faculty.List());
//    }
//}