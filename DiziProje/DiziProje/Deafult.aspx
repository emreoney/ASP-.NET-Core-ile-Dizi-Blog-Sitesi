<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Deafult.aspx.cs" Inherits="DiziProje.Deafult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                        <div class="content-grid">
                            <div class="content-grid-info">
                                <img src="<%# Eval("BLOGGORSEL") %>" alt="" style="height: 300px; width: 600px" />
                                <div class="post-info">
                                    <h4><a href="BlogDetay.Aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK") %></a> <%# Eval("BLOGTARIH") %> </h4>
                                    <p style="margin-right: 50px"><%# Eval("BLOGICERIK") %></p>
                                    <a href="single.html"><span></span>Daha Fazlası</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>En Son Eklenen Bloglar</h3>
                    <ul>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("BLOGBASLIK") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
                <div class="comments">
                    <h3>En Son Eklenen Yorumlar</h3>
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <ul>
                                <li><a href="#"><%# Eval("KULLANICIAD") %> - <%# Eval("YORUMCERIK") %></a></li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
                <div class="clearfix"></div>
                <div class="archives">
                    <h3>Arşiv</h3>
                    <ul>
                        <li><a href="#">Mayıs 2022</a></li>
                        <li><a href="#">Ağustos 2022</a></li>
                    </ul>
                </div>
                <div class="categories">
                    <h3>Kategoriler</h3>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <ul>
                                <li><a href="KategoriDetay.Aspx?KATEGORIID=<%# Eval("KATEGORIID") %>"><%# Eval("KATEGORIAD") %></a></li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>


</asp:Content>
