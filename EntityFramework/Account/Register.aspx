<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="EntityFramework.Register" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style4
        {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Yeni Üye Kayıt
    </h2>
    <p>
       Lütfen aşşağıdaki formu kullanarak sisteme kayıt olunuz.</p>

        <table border="0" cellpadding="0" cellspacing="0" 
        style="height: 279px; width: 388px; margin-top: 65px">
    <tr>
        <th colspan="3">
            Form</th>
    </tr>
    <tr>
        <td class="style4">
            Kullanıcı Adı
            :</td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                ErrorMessage="Gerekli." ForeColor="Red" ControlToValidate="txtUsername"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            Şifre
            :</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                ErrorMessage="Gerekli." ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            Şifre Tekrar:
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" 
                ErrorMessage="Şifreniz Eşleşmemektedir." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            Email
            :</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                ErrorMessage="Email Gereklidir." Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" 
                ErrorMessage="Yanlış Email Adresi" />
        </td>
    </tr>
    <tr>
        <td class="style4">
        </td>
        <td>
            <asp:Button ID="Button1" Text="Kaydet" runat="server" OnClick="RegisterUser" />
        </td>
        <td>
        </td>
    </tr>
</table>
            
</asp:Content>
