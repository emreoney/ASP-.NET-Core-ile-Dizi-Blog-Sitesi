using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje
{
    public partial class iletisim : System.Web.UI.Page
    {

        DiziBlogEntities db = new DiziBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_ILETISIM t = new TBL_ILETISIM();
            t.ADSOYAD = Txtadsoyad.Text;
            t.KONU = TxtKonu.Text;
            t.MAIL = TxtMail.Text;
            t.MESAJ = TxtMesaj.Text;
            t.TELEFON = TxtTelefon.Text;
            db.TBL_ILETISIM.Add(t);
            db.SaveChanges();
            Response.Redirect("iletisim.Aspx");
        }
    }
}