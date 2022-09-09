using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        DiziBlogEntities db = new DiziBlogEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            Repeater1.DataSource = db.TBL_BLOG.Where(x => x.BLOGID == id).ToList();
            Repeater1.DataBind();

            var yorumlar = db.TBL_YORUMLAR.Where(x => x.YORUMBLOG == id).ToList();
            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            TBL_YORUMLAR t = new TBL_YORUMLAR();
            t.KULLANICIAD = TextBox1.Text;
            t.MAIL = TextBox2.Text;
            t.YORUMCERIK = TextBox3.Text;
            t.YORUMBLOG = id;
            db.TBL_YORUMLAR.Add(t);
            db.SaveChanges();
            Response.Redirect("BlogDetay.Aspx?BLOGID="+ id);
        }
    }
}