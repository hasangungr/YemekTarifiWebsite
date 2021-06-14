<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site.AdminYorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" CssClass="auto-style5" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mail:</td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="auto-style5" TextMode="Email" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Yorum:</td>
            <td>
                <asp:TextBox ID="TxtYorum" runat="server" CssClass="auto-style5" Height="41px" TextMode="MultiLine" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Yemek:</td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" CssClass="auto-style5" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnOnay" runat="server" CssClass="tb4" Height="29px" OnClick="BtnOnay_Click" Text="Onayla" Width="256px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
