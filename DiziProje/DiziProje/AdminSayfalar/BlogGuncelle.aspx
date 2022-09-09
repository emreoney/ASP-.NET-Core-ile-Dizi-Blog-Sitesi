<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BlogGuncelle.aspx.cs" Inherits="DiziProje.AdminSayfalar.BlogGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Blog Başlık"></asp:Label>
        <asp:TextBox ID="TxtBlogBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Blog İçerik"></asp:Label>
        <asp:TextBox ID="TxtBlogicerik" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Blog Tarih"></asp:Label>
        <asp:TextBox ID="TxtBlogtarih" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Blog Görsel"></asp:Label>
        <asp:TextBox ID="TxtBloggorsel" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="TURAD" DataValueField="TURID"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataTextField="KATEGORIAD" DataValueField="KATEGORIID"></asp:DropDownList>
        <br />
        <asp:Button ID="EkleButton" runat="server" CssClass="btn btn-primary" Text="Ekle" OnClick="EkleButton_Click"/>
    </form>

</asp:Content>
