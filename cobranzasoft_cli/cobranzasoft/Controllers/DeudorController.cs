using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using cobranzasoft.Models;

namespace cobranzasoft.Controllers
{
    public class DeudorController : Controller
    {
        //
        // GET: /Deudor/
        CobranzasEntities2 DB = new CobranzasEntities2();

        public ActionResult Index()
        {
            var clientes = DB.Cliente;
            return View(clientes.ToList());
        }
        public ActionResult Cliente(String cliente)
        {
            var DeudoresCliente = DB.Cliente.Include("Deudor").Single(c => c.codCliente == cliente);
            ViewData["Cliente"] = cliente;
            return View(DeudoresCliente.Deudor.ToList());
        }
        public ActionResult Detalles(int id)
        {
            var deudor = DB.Deudor.Single(p => p.idDeudor == id);
            return View(deudor);
        }
    }
}
