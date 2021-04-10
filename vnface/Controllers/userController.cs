using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using vnface.Models;

namespace vnface.Controllers
{
    public class userController : Controller
    {
        private vnfaceContext db = new vnfaceContext();

        // GET: user
        public ActionResult Index()
        {
            return View(db.user_tb.ToList());
        }

        // GET: user/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            user_tb user_tb = db.user_tb.Find(id);
            if (user_tb == null)
            {
                return HttpNotFound();
            }
            return View(user_tb);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
