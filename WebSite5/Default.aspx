<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Calculator</h1>
    <form id="form1" runat="server">
    <div>
    
        Instruction :
        <br />
        please use following operator for calculation :<br />
        1)&nbsp; +&nbsp; for Addition
        <br />
        2)&nbsp; -&nbsp;&nbsp; for Subtraction<br />
        3)&nbsp; *&nbsp; for Multiplication<br />
        4)&nbsp; /&nbsp;&nbsp; for Division<br />
        5) %&nbsp; for Modulo<br />
        <br />
        <asp:Label ID="labelMsg" runat="server" ForeColor="#FF3300" Text="Warning display here"></asp:Label>
        &nbsp;<br />
        <br />
    
    </div>
        <div>
            Input Value 1 :<br />
            <asp:TextBox ID="txtInputValue1" runat="server" OnTextChanged="txtInputValue1_TextChanged"></asp:TextBox>

        </div>

        <div>
            Operator :<br />
            <asp:TextBox ID="txtOperator" runat="server" OnTextChanged="txtOperator_TextChanged"></asp:TextBox>
        </div>
        <div>
            Input Value 2 :<br />
            <asp:TextBox ID="txtInputValue2" runat="server" OnTextChanged="txtInputValue2_TextChanged"></asp:TextBox>
        </div>
        <div>
            Output :
            <br />
            <asp:TextBox ID="txtOutputValue" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <asp:Button ID="btnCalculate" runat="server" OnClick="Button1_Click" Text="Calculate" />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
