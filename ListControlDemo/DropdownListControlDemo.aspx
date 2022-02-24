<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropdownListControlDemo.aspx.cs" Inherits="ListControlDemo_DropdownListControlDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     Country Name : <asp:TextBox runat="server" ID="txtCountryName" /><br />
     Country Code : <asp:TextBox runat="server" ID="txtCountryCode" /><br />
        <asp:Button runat="server" ID="btnAdd" Text="Add" OnClick="btnAdd_Click" />
        <asp:Button runat="server" ID="btnDelete" Text="Remove" OnClick="btnDelete_Click" />
    <div>
     <asp:DropDownList ID="ddlCountry" runat="server">
           <%--     <asp:ListItem Value="91">India</asp:ListItem>
                <asp:ListItem Value="92">China</asp:ListItem>
                <asp:ListItem Value="93">Srilanka</asp:ListItem>
                <asp:ListItem Value="94">Bangladesh</asp:ListItem>
                <asp:ListItem Value="95">Nepal</asp:ListItem>
                <asp:ListItem Value="96">USA</asp:ListItem--%>
        </asp:DropDownList>

        <br />
        <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
        <br />

        <asp:Label ID="lblMessage" runat="server" EnableViewState="False" />
        <asp:Label ID="lblMessage2" runat="server" EnableViewState="False" />
    </div>
    </form>
</body>
</html>
