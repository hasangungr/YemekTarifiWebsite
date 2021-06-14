<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site.AdminKategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        margin-left: 3px;
    }
    .auto-style5 {
        width: 212px;
    }
    .auto-style6 {
        margin-left: 40px;
    }
    .auto-style7 {
        width: 212px;
        height: 26px;
    }
    .auto-style8 {
        height: 26px;
        margin-left: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">KATEGORİ AD:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="223px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">KATEGORİ ADET:</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Width="223px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">KATEGORİ RESİM:</td>
        <td class="auto-style6">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="231px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">
            <asp:Button ID="Button1" runat="server" CssClass="tb4" Height="33px" Text="Güncelle" Width="101px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
