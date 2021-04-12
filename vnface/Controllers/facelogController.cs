using System.Linq;
using System.Net;
using System.Web.Mvc;
using vnface.Models;

namespace vnface.Controllers
{
    public class facelogController : Controller
    {
        private vnfaceContext db = new vnfaceContext();

        // GET: facelog
        public ActionResult Index()
        {
            return View(db.face_log_tb.ToList());
        }

        // GET: facelog/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            face_log_tb face_log_tb = db.face_log_tb.Find(id);
            if (face_log_tb == null)
            {
                return HttpNotFound();
            }
            return View(face_log_tb);
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
