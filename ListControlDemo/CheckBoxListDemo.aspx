<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBoxListDemo.aspx.cs" Inherits="ListControlDemo_CheckBoxListDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList runat="server" ID="cblCountry">
             <asp:ListItem Value="91">India</asp:ListItem>
                <asp:ListItem Value="92">China</asp:ListItem>
                <asp:ListItem Value="93">Srilanka</asp:ListItem>
                <asp:ListItem Value="94">Bangladesh</asp:ListItem>
                <asp:ListItem Value="95">Nepal</asp:ListItem>
                <asp:ListItem Value="96">USA</asp:ListItem>
           
        </asp:CheckBoxList>
        <asp:Button ID="btnShow2" runat="server" Text="Show" OnClick="btnShow2_Click" /><br />
        <asp:Label ID="lblMessage2" runat="server" EnableViewState="false" /><br />
        <hr />
         <asp:RadioButtonList runat="server" ID="rblCountry">
             <asp:ListItem Value="91">India</asp:ListItem>
                <asp:ListItem Value="92">China</asp:ListItem>
                <asp:ListItem Value="93">Srilanka</asp:ListItem>
                <asp:ListItem Value="94">Bangladesh</asp:ListItem>
                <asp:ListItem Value="95">Nepal</asp:ListItem>
                <asp:ListItem Value="96">USA</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click"/><br />
        <asp:Label ID="lblMessage" runat="server" EnableViewState="false" /><br />
        <hr />
         <asp:BulletedList runat="server" ID="blCountry">
             <asp:ListItem Value="91">India</asp:ListItem>
                <asp:ListItem Value="92">China</asp:ListItem>
                <asp:ListItem Value="93">Srilanka</asp:ListItem>
                <asp:ListItem Value="94">Bangladesh</asp:ListItem>
                <asp:ListItem Value="95">Nepal</asp:ListItem>
                <asp:ListItem Value="96">USA</asp:ListItem>
        </asp:BulletedList>
        
    </div>
    </form>
</body>
</html>
