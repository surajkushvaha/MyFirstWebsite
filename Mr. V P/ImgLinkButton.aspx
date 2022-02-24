<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImgLinkButton.aspx.cs" Inherits="ImgLinkButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Image Button:
        <asp:ImageButton ID="imgbtnSimple" runat="server" ToolTip="simple img button" AlternateText="NotFound" ImageUrl="~/images/go.png" Width="100px" OnClick="imgbtnNevigate_Click" />
        <br />
        <br />
        <br />
        Image Button Navigate To DarshanUMS:
        <asp:ImageButton ID="imgbtnClick" runat="server" AlternateText="NotFound" OnClick="ImageButton1_Click" Width="200px" />
        <br />
        <br />
        <br />
        LinkButton:
        <asp:LinkButton ID="lbtnClick" runat="server" OnClick="lbtnClick_Click" ToolTip="This is linkbutton">LinkButton</asp:LinkButton>
        <br />
        <br />
        <br />
        Simple Button
        <asp:Button ID="btnClick" runat="server" OnClick="btnClick_Click" Text="SimpleButton" ToolTip="This is SimpleButton" />
        <br />
        <br />
        <br />
        Label Message:
        <asp:Label ID="lblMessage" runat="server" BackColor="#99FFCC" ToolTip="This isn label"></asp:Label>
        
    </div>
    </form>
</body>
</html>
