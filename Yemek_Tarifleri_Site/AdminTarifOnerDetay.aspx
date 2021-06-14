<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site.AdminTarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Tarif Ad:</td>
                <td>
                    <asp:TextBox ID="TxtTarifAd" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Malzemeler:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TxtTarifMalzeme" runat="server" Height="51px" TextMode="MultiLine" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Tarif: </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtTarifTarif" runat="server" Height="49px" TextMode="MultiLine" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Tarif Resim:</td>
                <td class="auto-style13">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="280px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Tarfi Öneren:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtTarifOneren" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Öneren Mail:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtTarifMail" runat="server" TextMode="Email" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Kategori:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="283px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="BtnTarif" runat="server" CssClass="auto-style14" Height="31px"  Text="Onayla" Width="283px" OnClick="BtnTarif_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
