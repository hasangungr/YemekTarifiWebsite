<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Site.AdminYemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 2px;
        }
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style8 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
        }
        .auto-style9 {
            width: 156px;
        }
        .auto-style10 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
            font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Yemek Ad:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Height="22px" Width="274px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Malzemeler:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" Height="63px" TextMode="MultiLine" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Tarif:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" Height="62px" TextMode="MultiLine" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Kategori:</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="283px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7"><strong><em>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style10" ForeColor="Red" Height="29px" OnClick="Button2_Click1" Text="Günün Yemeği Seç" Width="282px" />
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px" Text="Güncelle" Width="284px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
