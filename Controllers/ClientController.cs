using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NetCoreProject.Models;
namespace NetCoreProject.Controllers
{
    public class ClientController : Controller
    {
        private static List<ClientViewModel> Clients = new List<ClientViewModel>()
        {
            new ClientViewModel
            {
                Name = "Gonzalo",
                Lastname = "Rodriguez",
                Age = 22
            },
            new ClientViewModel
            {
                Name = "Hernan",
                Lastname = "Pereira",
                Age = 11
            },
        };
        // GET: Client
        public IActionResult Index()
        {
            return View(Clients);
        }
    }
}