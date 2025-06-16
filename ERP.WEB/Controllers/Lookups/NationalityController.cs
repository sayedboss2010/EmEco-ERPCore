using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers;

[AreaAuthentication("DataEntry")]
public class NationalityController : Controller
{
    public IActionResult Index()
    {
        return View();
    }
}
