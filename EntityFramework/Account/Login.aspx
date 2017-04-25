<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="EntityFramework.Account.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Giriş Yap
    </h2>
    <p>
        Lütfen kullanıcı adı ve şifrenizi giriniz.
       Eğer hesabınız yok ise buradan 
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Account/Register.aspx">Kayıt Ol</asp:HyperLink>
        abilirsiniz.</p>
   
   
    <asp:Login ID = "Login1" runat = "server" OnAuthenticate= "ValidateUser" 
        Height="249px" style="margin-top: 1px" Width="280px" 
        FailureText="Girişiniz başarılı olmamıştır. Lütfen tekrar deneyin." 
        ForeColor="Black" LoginButtonText="Giriş" PasswordLabelText="Şifre:" 
        PasswordRequiredErrorMessage="Şifreniz gereklidir." RememberMeText="Beni Hatırla." 
        TitleText="Giriş" UserNameLabelText="Kullanıcı Adı:" 
        UserNameRequiredErrorMessage="Kullanıcı Adı Giriniz.">
        <LoginButtonStyle Font-Bold="False" Font-Italic="False" Width="120px" />
        <TitleTextStyle Font-Bold="True" />
    </asp:Login>

       
   

 
           
            
</asp:Content>
