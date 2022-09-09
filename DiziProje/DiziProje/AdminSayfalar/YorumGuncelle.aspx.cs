using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje.AdminSayfalar
{
    public partial class YorumGuncelle : System.Web.UI.Page
    {
        DiziBlogEntities db = new DiziBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = int.Parse(Request.QueryString["YORUMID"]);
            var deger = db.TBL_YORUMLAR.Find(a);
            TxtKullaniciadi.Text = deger.KULLANICIAD;
            TxtMail.Text = deger.MAIL;
            TxtYorumicerik.Text = deger.YORUMCERIK;
            TxtBlog.Text = Convert.ToString(deger.YORUMBLOG);

            

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            int b = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var deger = db.TBL_YORUMLAR.Find(b);
            deger.KULLANICIAD = TxtKullaniciadi.Text;
            deger.MAIL = TxtMail.Text;
            deger.YORUMCERIK = TxtYorumicerik.Text;
            deger.YORUMBLOG = Convert.ToInt32(TxtBlog.Text);
            db.SaveChanges();
            Response.Redirect("Yorumlar.Aspx");

        }
    }
}