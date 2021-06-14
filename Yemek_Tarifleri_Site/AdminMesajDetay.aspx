<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site.AdminMesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">Gönderen Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Width="256px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Gönderen Başlık:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" Width="256px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Gönderen Mail:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" Width="255px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mesaj:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5" Height="78px" Width="255px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
