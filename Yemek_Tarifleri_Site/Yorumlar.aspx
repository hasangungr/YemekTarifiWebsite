<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Site.Yorumlar" %>
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" ForeColor="White" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </em>
                        </td>
                        <td class="auto-style7">
                            <em>
                            <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resim/delete.png" Width="30px" />
                            </em>
                        </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resim/upload.png" Width="30px" />
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style15" ForeColor="Black" Height="37px" Width="449px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                </td>
                <td>ONAYLANMAYAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style7" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" ForeColor="White" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </em>
                        </td>
                        <td class="auto-style7">
                            <em>
                            <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resim/delete.png" Width="30px" />
                            </em>
                        </td>
                        <td class="auto-style5">
                         <a href="AdminYorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resim/upload.png" Width="30px" />
                             </a>  
                       </td>
                     </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
