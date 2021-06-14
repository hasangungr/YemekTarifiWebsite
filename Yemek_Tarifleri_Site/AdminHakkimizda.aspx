<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkimizda.aspx.cs" Inherits="Yemek_Tarifleri_Site.AdminHakkimizda" %>
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
            font-size: medium;
            font-style: italic;
            margin-bottom: 2px;
        }
        .auto-style17 {
            margin-left: 160px;
        }
        .auto-style18 {
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15" ForeColor="Black" Height="37px" Width="449px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
                </td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16" Height="193px" TextMode="MultiLine" Width="436px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style18" Height="33px" Text="Güncelle" Width="444px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
