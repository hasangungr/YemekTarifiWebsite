<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="Yemek_Tarifleri_Site.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            background-color: #FF3300;
        height: 296px;
    }
        .auto-style5 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
            <tr>
            <td colspan="2" style="font-size: x-large"><strong><em>MESAJ PANELİ</em></strong></td>
        </tr>
            <td class="auto-style5">Ad Soyad</td>
            <td>
                <asp:TextBox ID="TxtGonderen" runat="server" Width="204px" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Mail:</td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="204px" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Konu:</td>
            <td>
                <asp:TextBox ID="TxtKonu" runat="server" Width="204px" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Mesaj:</td>
            <td>
                <asp:TextBox ID="TxtIcerik" runat="server" Height="100px" TextMode="MultiLine" Width="204px" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="35px" style="font-weight: 700; font-size: medium" Text="Gönder" Width="77px" />
            </td>
        </tr>
    </table>
</asp:Content>
