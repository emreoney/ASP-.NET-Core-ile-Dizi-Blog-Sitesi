<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="DiziProje.AdminSayfalar.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">

        <tr>

            <th>ID</th>
            <th>KULLANICI</th>
            <th>MAIL</th>
            <th>YORUM</th>
            <th>BLOG</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>

        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <tr>
                    <td><%# Eval("YORUMID") %></td>
                    <td><%# Eval("KULLANICIAD") %></td>
                    <td><%# Eval("MAIL") %></td>
                    <td><%# Eval("YORUMCERIK") %></td>
                    <td><%# Eval("YORUMBLOG") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "YorumSil.Aspx?YORUMID=" + Eval("YORUMID") %>'>SİL</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning" NavigateUrl='<%# "YorumGuncelle.Aspx?YORUMID=" + Eval("YORUMID") %>'>GÜNCELLE</asp:HyperLink></td>
                    
                </tr>


            </ItemTemplate>
        </asp:Repeater>


    </table>



</asp:Content>
