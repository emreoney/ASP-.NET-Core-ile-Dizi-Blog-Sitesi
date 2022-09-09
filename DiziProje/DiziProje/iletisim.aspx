<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="DiziProje.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  

<div class="contact-content">
	 <div class="container">
		     <div class="contact-info">
			 <h2>İLETİŞİM</h2>
			 <p>Blog sayfamızda bulunan film ve dizilere eklemek istedikleriniz için veya yorumlarda yaşayacağınız herhangi bir problem olursa bu panelden bizlere mesaj gönderebilirsiniz. Mesaj gönderme sırasında mutlaka mail adresinizi doğru yazdığınıza emin olun.</p>
		     </div>
			 <div class="contact-details">				 
			 <form runat="server">
                 <asp:TextBox ID="Txtadsoyad" runat="server" placeholder="Ad Soyad"></asp:TextBox>
                 <asp:TextBox ID="TxtMail" runat="server" placeholder="Mail"></asp:TextBox>
                 <asp:TextBox ID="TxtTelefon" runat="server" placeholder="Telefon"></asp:TextBox>
                 <asp:TextBox ID="TxtKonu" runat="server" placeholder="Konu"></asp:TextBox>
                 <asp:TextBox ID="TxtMesaj" runat="server" placeholder="Mesajınız"></asp:TextBox>
                 <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
			 </form>
		  </div>
		  <div class="contact-details">
			  <div class="col-md-6 contact-map">
				 <h4>BİZİ BURADA BULABİLİRSİNİZ</h4>
				 <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%C4%B0ZM%C4%B0R&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://fmovies-online.net"></a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><a href="https://www.embedgooglemap.net"></a><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>
			  </div>
			<%--  <div class="col-md-6 company_address">		 
					<h4>İLETİŞİME GEÇİN</h4>
					<p>500 Lorem Ipsum Dolor Sit,</p>
					<p>22-56-2-9 Sit Amet, Lorem,</p>
					<p>USA</p>
					<p>Phone:(00) 222 666 444</p>
					<p>Fax: (000) 123 456 78 0</p>
					<p>Email: <a href="mailto:info@example.com">oneyyemre@gmail.com</a></p>
					
			 </div>--%>
			  <div class="clearfix"></div>
	     </div>		 


			 </div>
	 </div>


	



</asp:Content>
