<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TextboxDemo.aspx.cs" Inherits="TextboxDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Enter Studentname:<asp:TextBox ID="txtStudentname" runat="server" BackColor="#66FF99" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px"></asp:TextBox><br />
    Enter Password: <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
    Enter Adress: <asp:TextBox ID="txtAdress" runat="server" TextMode="MultiLine" Rows="3" ></asp:TextBox>
    </div>
        <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />

    </form>

    <asp:Label ID="lblAlldetails" runat="server" BackColor="#FF9966" BorderColor="Black" BorderWidth="5px" EnableViewState="False" Height="100px" Width="1000px"></asp:Label>
</body>
</html>
