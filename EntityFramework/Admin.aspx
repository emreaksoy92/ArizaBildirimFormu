<%@ Page Title="Admin Paneli" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Admin.aspx.cs" Inherits="EntityFramework.Admin" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Üye Kaydı
    </h2>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="İsim:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TbIsim" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Soyisim:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TbSoyİsim" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Kullanıcı Adı:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TbKullanıcıAdı" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4"  runat="server" Text="E-Mail:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TbEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Şifre:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TbŞifre" TextMode="Password" runat="server"></asp:TextBox>                            
                
             </td> 
                
       
            <td>
                &nbsp;</td>
        </tr>
 
    
    </table>
    <p>
 <asp:Button ID="Button1" runat="server" Text="Kaydet" onclick="Button1_Click"/>
        <asp:Button ID="Reset" runat="server" onclick="Reset_Click" Text="Reset" />
        <asp:Label ID="Label6" runat="server" ForeColor="Green" Text="Label" 
            Visible="False"></asp:Label>
 </p>

</asp:Content>

