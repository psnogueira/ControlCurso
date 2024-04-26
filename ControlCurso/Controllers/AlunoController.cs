using Microsoft.AspNetCore.Mvc;

namespace ControlCurso.Controllers
{
    public class AlunoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
