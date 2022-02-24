<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListBoxItemDemo.aspx.cs" Inherits="ListControlDemo_ListBoxItemDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        Country Name : <asp:TextBox runat="server" ID="txtCountryName" /><br />
     Country Code : <asp:TextBox runat="server" ID="txtCountryCode" /><br />
        <h6>
            If You Want to Edit
        </h6>
        New Country Name : <asp:TextBox runat="server" ID="txtNewName" /><br />
    New Country Code : <asp:TextBox runat="server" ID="txtNewCode" /><br />
      
        <asp:Button runat="server" ID="btnAdd" Text="Add" OnClick="btnAdd_Click" />
        <asp:Button runat="server" ID="btnDelete" Text="Remove" OnClick="btnDelete_Click" />
        <asp:Button runat="server" ID="btnEdit" Text="Edit" OnClick="btnEdit_Click" />
        

        <hr />
         <table>
             <tr>
                 <td>
                     <asp:ListBox ID="lstb" runat="server" SelectionMode="Multiple">
                        <asp:ListItem Value="91">India</asp:ListItem>
                        <asp:ListItem Value="92">China</asp:ListItem>
                        <asp:ListItem Value="93">Srilanka</asp:ListItem>
                        <asp:ListItem Value="94">Bangladesh</asp:ListItem>
                        <asp:ListItem Value="95">Nepal</asp:ListItem>
                        <asp:ListItem Value="96">USA</asp:ListItem>                                                         
                     </asp:ListBox>
                 </td>
             <td>
                 <asp:Button ID="btn1" runat="server" Text=">" OnClick="btn1_Click" /><br />
                 <asp:Button ID="btn2" runat="server" Text=">>" OnClick="btn2_Click" /><br />
                 <asp:Button ID="btn3" runat="server" Text="<" OnClick="btn3_Click" /><br />
                 <asp:Button ID="btn4" runat="server" Text="<<" OnClick="btn4_Click" /><br />


             </td>
                 <td>
                     <asp:ListBox ID="lstb2" runat="server" SelectionMode="Multiple">
                                                                                
                     </asp:ListBox>
                 </td>
             </tr>
         </table>

        <br />
        <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
        <br />

        <asp:Label ID="lblMessage" runat="server" EnableViewState="False" />
        <asp:Label ID="lblMessage2" runat="server" EnableViewState="False" />
        <asp:Label ID="lblMessage3" runat="server" EnableViewState="False" />

    </div>
    </form>
</body>
</html>
