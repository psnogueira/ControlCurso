using Microsoft.AspNetCore.Mvc;

namespace ControlCurso.Controllers
{
    public class CursoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
