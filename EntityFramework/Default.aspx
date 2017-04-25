<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="EntityFramework._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 231px;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        ARIZA BİLDİRİM FORMU</h2>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Arıza Adı:</td>
            <td>
                <asp:TextBox ID="TbArıza" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TbArıza" ErrorMessage="Geçerli bir Arıza Adı giriniz." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Kategori:</td>
            <td>
                <asp:DropDownList ID="DlKategori" runat="server" Height="20px" Width="170px" 
                    AutoPostBack="True">
                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                    <asp:ListItem>Yazılım</asp:ListItem>
                    <asp:ListItem>Mekanik</asp:ListItem>
                    <asp:ListItem>Parça</asp:ListItem>
                    <asp:ListItem>Teknik</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DlKategori" 
                    ErrorMessage="Geçerli bir Kategori tipi giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Arıza Tipi:</td>
            <td>
                <asp:DropDownList ID="DlArızaTipi" runat="server" Height="20px" Width="170px" 
                    AutoPostBack="True">
                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                    <asp:ListItem>Program yüklü değil</asp:ListItem>
                    <asp:ListItem>Var olan program çalışmıyor</asp:ListItem>
                    <asp:ListItem>Pc yavaşlaması</asp:ListItem>
                    <asp:ListItem>Pc açılmaması</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DlArızaTipi" ErrorMessage="Geçerli bir Arıza tipi giriniz." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Müsait Olunan Tarih:</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Saat:</td>
            <td>
                <asp:DropDownList ID="DlSaat" runat="server" Height="20px" Width="90px">
                    <asp:ListItem>08:00</asp:ListItem>
                    <asp:ListItem>09:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DlSaat" ErrorMessage="Müsait olunan bir saat giriniz." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Açıklama:</td>
            <td>
                <asp:TextBox ID="TbAçıklama" runat="server" Height="92px" Width="451px" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TbAçıklama" ErrorMessage="Açıklama giriniz." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Aciliyet:</td>
            <td>
                <asp:RadioButtonList ID="RbAcil" runat="server" RepeatDirection="Horizontal" 
                    RepeatLayout="Flow" AutoPostBack="True">
                    <asp:ListItem Value="1">Acil Değil</asp:ListItem>
                    <asp:ListItem Value="2">Orta</asp:ListItem>
                    <asp:ListItem Value="3">Çok Acil</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="RbAcil" ErrorMessage="Aciliyet belirtiniz." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="Kaydet" Width="181px" 
                    onclick="Button1_Click1" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Sil" Width="181px" 
                    onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>

</table>
 <p>
        &nbsp;</p>
</asp:Content>
