using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proyecto_Coco.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult InicioSesion()
        {
            return View();
        }
        public ActionResult Registrar()
        {
            return View();
        }
    }
}