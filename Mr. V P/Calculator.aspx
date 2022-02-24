<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

     td {
        padding: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="10">
            <tr>
                <td> Enter First Number:</td>
                <td><asp:TextBox ID="txtvalue1" runat="server" ></asp:TextBox><br /></td>
            </tr>
            <tr>
                <td>Enter Operator :</td>
                <td><asp:TextBox ID="txtOperator" runat="server" ></asp:TextBox><br /></td>
            </tr>
            <tr>
                <td>Enter Second Number:</td>
                <td><asp:TextBox ID="txtvalue2" runat="server" ></asp:TextBox><br /></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="btnCalculate" Text="calculate" runat="server" OnClick="btnCalculate_Click" /><br /></td>
                
            </tr>
            <tr>
                <td>Your Answer:</td>
                <td><asp:TextBox ID="txtanswer" runat="server" ></asp:TextBox><br /></td>
            </tr>
            <tr>
                <td>Error Log:</td>
                <td><asp:Label ID="lblError" runat="server"></asp:Label><br /></td>
            </tr>
        </table>
       
        
        
        
        
        
    
    </div>
    </form>
</body>
</html>
