using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proyecto_Coco.Controllers
{
    public class Procedure_EmployeesController : Controller
    {
        //Nuestro contexto de datos
        ModeloDataContext model = new ModeloDataContext();

        // GET: Procedure_Employees/Create
        public ActionResult Create_Employees()
        {
            return View();
        }

        // POST: Procedure_Employees/Create
        [HttpPost]
        public ActionResult Create(tblEmpleados empleados)
        {
            try
            {
                model.sp_Agregar(empleados.Apellido,empleados.Nombre,empleados.Telefono,empleados.Cargo);
                model.SubmitChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Procedure_Employees/Edit/5
        public ActionResult Edit()
        {
            return View();
        }

        // POST: Procedure_Employees/Edit/5
        [HttpPost]
        public ActionResult Edit(tblEmpleados empleados)
        {
            try
            {
                //Implementamos la logica de programacion
                model.sp_Actualizar(Convert.ToInt32(empleados.Id),empleados.Apellido,empleados.Nombre,empleados.Telefono,empleados.Cargo);
                model.SubmitChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Procedure_Employees/Delete/5
        public ActionResult DeleteEmployees()
        {
            return View();
        }

        // POST: Procedure_Employees/Delete/5
        [HttpPost]
        public ActionResult Delete(int id)
        {
            try
            {
                model.sp_Eliminar(Convert.ToInt32(id));
                model.SubmitChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
