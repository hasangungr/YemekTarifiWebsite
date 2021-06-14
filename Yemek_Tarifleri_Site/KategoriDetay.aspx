<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 199px">
    <ItemTemplate>
        <table class="auto-style4">
            <tr>
                <td><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                    <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Yemek: "></asp:Label>
                    <asp:Label ID="Label2" runat="server" ForeColor="White" style="font-weight: 700; font-size: x-large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td>&nbsp;<asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Malzemeler: "></asp:Label>
                    <asp:Label ID="Label3" runat="server" ForeColor="White" style="font-style: italic" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" ForeColor="Black" Text="Tarif: "></asp:Label>
                    <asp:Label ID="Label7" runat="server" ForeColor="White" style="text-decoration: underline" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Puan: "></asp:Label>
                    <asp:Label ID="Label4" runat="server" ForeColor="White" style="font-weight: 700" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            &nbsp;&nbsp;
                            <asp:Label ID="Label12" runat="server" ForeColor="Black" Text="Tarih: "></asp:Label>
                    <asp:Label ID="Label5" runat="server" ForeColor="White" style="font-weight: 700" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
