<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Site.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-weight: bold;
            text-align: right;
            background-color: #E49218;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="height: 298px; width: 100%; text-decoration-color:black; color: #000000;">
        <tr>
            <td class="auto-style4">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TxtTarif1" runat="server" Width="250px" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Malzemeler:</td>
            <td>
                <asp:TextBox ID="TxtTarifMalzeme" runat="server" Height="50px" TextMode="MultiLine" Width="250px" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Yapılış:</td>
            <td>
                <asp:TextBox ID="TxtTarifYap" runat="server" Width="250px" Height="50px" TextMode="MultiLine" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpResim" runat="server" Width="254px" CssClass="tb4" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Öneren:</td>
            <td>
                <asp:TextBox ID="TxtTarifKisi" runat="server" Width="250px" OnTextChanged="TxtTarifKisi_TextChanged" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mail:</td>
            <td>
                <asp:TextBox ID="TxtTarifEMail" runat="server" Width="250px" TextMode="Email" CssClass="tb4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="BtnTarif" runat="server" Text="Tarif Öner" Width="150px" Height="45px" style="background-color: #FF0000" OnClick="BtnTarif_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
