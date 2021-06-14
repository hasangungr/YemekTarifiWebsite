<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifleri_Site.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Hakkimizda") %>' style="background-color: #FF0000"></asp:Label>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl="~/resim/kişisel-blog.png" Width="426px" />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
