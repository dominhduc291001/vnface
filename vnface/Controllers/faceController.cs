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
    public class faceController : Controller
    {
        private vnfaceContext db = new vnfaceContext();

        // GET: face
        public ActionResult Index()
        {
            return View(db.face_tb.ToList());
        }

        // GET: face/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            face_tb face_tb = db.face_tb.Find(id);
            if (face_tb == null)
            {
                return HttpNotFound();
            }
            return View(face_tb);
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
