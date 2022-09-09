using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziProje.Entity;

namespace DiziProje.AdminSayfalar
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        DiziBlogEntities db = new DiziBlogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int z = int.Parse(Request.QueryString["BLOGID"]);
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

                var deger = db.TBL_BLOG.Find(z);
                TxtBlogBaslik.Text = deger.BLOGBASLIK;
                TxtBlogicerik.Text = deger.BLOGICERIK;
                TxtBlogtarih.Text = Convert.ToString(deger.BLOGTARIH);
                TxtBloggorsel.Text = deger.BLOGGORSEL;

            }

        }

        protected void EkleButton_Click(object sender, EventArgs e)
        {
            int a = int.Parse(Request.QueryString["BLOGID"]);
            var blog = db.TBL_BLOG.Find(a);
            blog.BLOGBASLIK = TxtBlogBaslik.Text;
            blog.BLOGICERIK = TxtBlogicerik.Text;
            blog.BLOGTARIH = Convert.ToDateTime(TxtBlogtarih.Text);
            blog.BLOGGORSEL = TxtBloggorsel.Text;
            blog.BLOGTUR = byte.Parse(DropDownList1.SelectedValue);
            blog.BLOGKATEGORI = byte.Parse(DropDownList2.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Bloglar.Aspx");

        }
    }
}