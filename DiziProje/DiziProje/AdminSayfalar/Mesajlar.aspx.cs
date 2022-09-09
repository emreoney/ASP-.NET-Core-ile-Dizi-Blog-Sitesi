using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje.AdminSayfalar
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        DiziBlogEntities db = new DiziBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var mesaj = db.TBL_ILETISIM.ToList();
            Repeater1.DataSource = mesaj;
            Repeater1.DataBind();
        }
    }
}