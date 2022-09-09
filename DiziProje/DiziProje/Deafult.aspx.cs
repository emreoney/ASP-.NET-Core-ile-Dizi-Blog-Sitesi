using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje
{
    public partial class Deafult : System.Web.UI.Page
    {

        DiziBlogEntities db = new DiziBlogEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var bloglar = db.TBL_BLOG.ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();

            var bloglar2 = db.TBL_KATEGORI.ToList();
            Repeater2.DataSource = bloglar2;
            Repeater2.DataBind();

            var bloglar3 = db.TBL_BLOG.ToList();
            Repeater3.DataSource = bloglar3;
            Repeater3.DataBind();

            var bloglar4 = db.TBL_YORUMLAR.Take(3).ToList();
            Repeater4.DataSource = bloglar4;
            Repeater4.DataBind();

        }
    }
}