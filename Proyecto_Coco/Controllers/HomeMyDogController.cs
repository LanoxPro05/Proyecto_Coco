using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proyecto_Coco.Controllers
{
    public class HomeMyDogController : Controller
    {
        //Nuestro contexto de datos
        ModeloDataContext model = new ModeloDataContext();
        // GET: HomeMyDog
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult EmployeeRegistration()
        {
            List<tblEmpleados> tblEmpleados = model.tblEmpleados.ToList();
            return View(tblEmpleados);
        }
    }
}