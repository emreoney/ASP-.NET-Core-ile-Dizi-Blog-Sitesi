using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje.AdminSayfalar
{
    public partial class YorumSil : System.Web.UI.Page
    {
        DiziBlogEntities db = new DiziBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var yorum = db.TBL_YORUMLAR.Find(x);
            db.TBL_YORUMLAR.Remove(yorum);
            db.SaveChanges();
            Response.Redirect("Yorumlar.Aspx");
        }
    }
}