using Microsoft.AspNetCore.Mvc;

namespace ERP.WEB.Controllers.Lookups;

[AreaAuthentication("Stockes")]
public class ItemsController : Controller
{
    public IActionResult Index()
    {
        return View();
    }
}
