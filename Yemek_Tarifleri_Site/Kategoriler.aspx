<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Site.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            background-color: #66CCFF;
        }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        font-size: large;
    }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
            width: 333px;
        }
        .auto-style9 {
            width: 34px;
        }
        .auto-style10 {
            width: 35px;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            width: 212px;
        }
        .auto-style13 {
            margin-left: 40px;
        }
        .auto-style14 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-size: large;
        }
        .auto-style15 {
            background-color: #66CCFF;
        }
        .auto-style16 {
            width: 373px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15" ForeColor="Black" Height="37px" Width="449px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style7" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" ForeColor="White" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </em>
                        </td>
                        <td class="auto-style7">
                            <em>
                           <a href ="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %> &islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resim/delete.png" Width="30px" /></a>
                            </em>
                        </td>
                        <td class="auto-style5">
                          <a href="AdminKategoriDetay.aspx?Kategoriid=<%#Eval("Kategoriid" )%>">  <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resim/upload.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel runat="server" CssClass="auto-style4">
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style15" ForeColor="Black" Height="37px" Width="450px">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </td>
                    <td class="auto-style16">KATEGORİ EKLEME</td>
                </tr>
            </table>
        </asp:Panel>
        
    </asp:Panel>
    <asp:Panel ID="Panel4" runat= "server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TxtKategoriAd" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Kategori İkon:</td>
                <td class="auto-style13">
                    <asp:FileUpload ID="KategoriIkon" runat="server" Width="280px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style14" Height="31px" Text="Ekle" Width="65px" OnClick="BtnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
