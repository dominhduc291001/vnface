using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
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


        // GET: face/Create
        public ActionResult Create()
        {
            return View();
        }
        // POST:face/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,name,gender,age,feature")] face_tb face, HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    if (file != null)
                    {
                        string fileName = Path.GetFileName(file.FileName);
                        string urlImage = Server.MapPath("~/Assets/static/upload/person/" + fileName);
                        file.SaveAs(urlImage);
                    }
                    ViewBag.FileStatus = "Tạo mới thành công.";
                }
                catch (Exception)
                {
                    ViewBag.FileStatus = "Lỗi upload ảnh.";
                }
                string filesave = "/static/upload/person/" + file.FileName;
                face.face_image = filesave;
                db.face_tb.Add(face);
                db.SaveChanges();
            }
            return View(face);
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
