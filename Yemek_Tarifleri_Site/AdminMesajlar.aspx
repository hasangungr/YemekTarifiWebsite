<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajlar.aspx.cs" Inherits="Yemek_Tarifleri_Site.AdminMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style15 {
            background-color: #66CCFF;
        }
        .auto-style9 {
            width: 34px;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style10 {
            width: 35px;
        }
        .auto-style16 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15" ForeColor="Black" Height="37px" Width="449px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style7" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" ForeColor="White" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </em>
                        </td>
                        <td class="auto-style7">
                            &nbsp;</td>
                        <td class="auto-style16">
                          <a href ="AdminMesajDetay.aspx?Mesajid=<%#Eval("mesajid") %>"> <asp:Image ID="Image2" runat="server" Height="41px" ImageUrl="~/resim/read.png" Width="46px" />
                        </a>
                              </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
