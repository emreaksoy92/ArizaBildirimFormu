<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="EntityFramework.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Kayıtlar
    </h2>
     <asp:RadioButtonList ID="StatusRb" runat="server" BackColor="#990000" 
            Font-Bold="True" AutoPostBack="True" ForeColor="#FFCC66" 
    style="z-index: 1; left: 456px; top: 212px; position: absolute; height: 53px; width: 97px">
            <asp:ListItem Value="1">Çözüldü</asp:ListItem>
            <asp:ListItem Value="0 ">Çözülmedi </asp:ListItem>
        </asp:RadioButtonList>
    
      
        <asp:Label ID="TbAciklama12" runat="server" Text="Açıklama: " 
    style="z-index: 1; left: 172px; top: 230px; position: absolute"></asp:Label>
        <asp:TextBox ID="TbAciklama1" runat="server" TextMode="MultiLine" 
    style="z-index: 1; left: 235px; top: 211px; position: absolute; height: 50px; width: 209px"></asp:TextBox>
    
      
        <asp:Button ID="Onayla" runat="server"  Text="Onayla" 
            Width="92px" onclick="Onayla_Click" 
    style="z-index: 1; left: 559px; top: 238px; position: absolute" />
    
      
    <br />
<br />
<br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
    GridLines="None" onrowcommand="GridView1_RowCommand">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<br />
    </asp:Content>
