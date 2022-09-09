<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="DiziProje.AdminSayfalar.YorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı"></asp:Label>
        <asp:TextBox ID="TxtKullaniciadi" CssClass="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Mail"></asp:Label>
        <asp:TextBox ID="TxtMail" CssClass="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Yorum"></asp:Label>
        <asp:TextBox ID="TxtYorumicerik" CssClass="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Blog"></asp:Label>
        <asp:TextBox ID="TxtBlog" CssClass="form-control" runat="server"></asp:TextBox>
        <br />


        <asp:Button ID="BtnGuncelle" runat="server" CssClass="btn btn-primary" Text="Kaydet" OnClick="BtnGuncelle_Click" />

    </form>




</asp:Content>
