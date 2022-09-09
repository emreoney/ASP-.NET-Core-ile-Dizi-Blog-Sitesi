using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje
{
    public partial class Login : System.Web.UI.Page
    {
        DiziBlogEntities db = new DiziBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBL_ADMIN where x.KULLANICI == TextBox1.Text && x.SIFRE == TextBox2.Text select x;

            if (sorgu.Any())
            {
                Session.Add("KULLANICI", TextBox1.Text);
                Response.Redirect("/AdminSayfalar/Bloglar.Aspx");
            }
            else
            {
                Response.Write("Yanlış kullanıcı adı veya şifre!");
            }
        }
    }
}