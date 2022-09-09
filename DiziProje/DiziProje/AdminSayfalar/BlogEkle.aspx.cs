using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        DiziBlogEntities db = new DiziBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {


                var turler = (from x in db.TBL_TUR
                              select new
                              {
                                  x.TURAD,
                                  x.TURID
                              }).ToList();
                DropDownList1.DataSource = turler;
                DropDownList1.DataBind();



                var kategoriler = (from y in db.TBL_KATEGORI
                                   select new
                                   {
                                       y.KATEGORIAD,
                                       y.KATEGORIID
                                   }).ToList();
                DropDownList2.DataSource = kategoriler;
                DropDownList2.DataBind();

            }
        }

        protected void EkleButton_Click(object sender, EventArgs e)
        {
            TBL_BLOG t = new TBL_BLOG();
            t.BLOGBASLIK = TxtBlogBaslik.Text;
            t.BLOGICERIK = TxtBlogicerik.Text;
            t.BLOGTARIH = DateTime.Parse(TxtBlogtarih.Text);
            t.BLOGGORSEL = TxtBloggorsel.Text;
            t.BLOGTUR = int.Parse(DropDownList1.SelectedValue);
            t.BLOGKATEGORI = int.Parse(DropDownList2.SelectedValue);
            db.TBL_BLOG.Add(t);
            db.SaveChanges();
            Response.Redirect("Bloglar.Aspx");
        }
    }
}