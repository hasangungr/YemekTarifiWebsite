
<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" ForeColor="Black" style="font-weight: 700" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>' ForeColor="Black" style="font-size: x-large; font-weight: 700"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" ForeColor="Black" style="font-size: large" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" ForeColor="Black" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="background-color: #CC6600">Yorum Yap</div>
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CC6600">
        <table class="auto-style4">
            <tr>
                <td>Ad Soyad: </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mail: </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yorum: </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" Width="116px" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
