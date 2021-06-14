<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifler.aspx.cs" Inherits="Yemek_Tarifleri_Site.AdminTarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            width: 48px;
        }
        .auto-style8 {
            width: 49px;
        }
        .auto-style9 {
            width: 51px;
        }
        .auto-style10 {
            width: 52px;
        }
        .auto-style11 {
            width: 53px;
        }
        .auto-style12 {
            width: 55px;
        }
        .auto-style13 {
            width: 119px;
        }
        .auto-style14 {
            width: 883%;
        }
        .auto-style15 {
            text-align: right;
            width: 235px;
        }
        .auto-style16 {
            text-align: right;
            width: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15" ForeColor="Black" Height="37px" Width="449px" style="background-color: #6699FF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;ONAYLANAN TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    </div>
    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style7" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" ForeColor="White" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </em>
                        </td>
                        <td class="auto-style7">
                            &nbsp;</td>
                        <td class="auto-style6">
                          <a href ="AdminTarifOnerDetay.aspx?Tarifid=<%#Eval("tarifid") %>"> <asp:Image ID="Image2" runat="server" Height="41px" ImageUrl="~/resim/oneri.png" Width="46px" /></a>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style15" ForeColor="Black" Height="37px" Width="449px" style="background-color: #6699FF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button3_Click" Text="+" Width="30px" />
                    </strong>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                </td>
                <td>&nbsp;ONAYLANMAYAN TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style7" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" ForeColor="White" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </em>
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                        <td class="auto-style16">
                          <a href ="AdminTarifOnerDetay.aspx?Tarifid=<%#Eval("tarifid") %>"> <asp:Image ID="Image2" runat="server" Height="41px" ImageUrl="~/resim/oneri.png" Width="46px" /></a>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
