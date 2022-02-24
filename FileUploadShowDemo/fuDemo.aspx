<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fuDemo.aspx.cs" Inherits="fuDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div style="display:flex; flex-direction:column;justify-content:center;align-items:center">
        <asp:Label ID="lblFileDemo" runat="server"></asp:Label><br />
        <asp:FileUpload ID="fuFileDemo" runat="server" />
        <div style="flex-direction:row">
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        </div>      
    </div>
<hr />
        <%--<section >
        <h2>Contact</h2>
        <div id="lblMsgDiv" runat="server" visible="false" >
            <asp:Label ID="lblContactPhotoMsg" runat="server"
                EnableViewState="False" Visible="False"></asp:Label>
            <asp:Label ID="lblErrMsg" runat="server"
                EnableViewState="False" Visible="False"></asp:Label>
        </div>

        <div >
            <div >
                <asp:Label ID="lblContactPhotoName" runat="server" Text="ContactPhoto Name" ></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtContactPhotoName" CssClass="form-control" runat="server"></asp:TextBox>
                
            </div>
        </div>
        <div >
            <div>
                <asp:Label ID="lblContactPhotoFile" runat="server" Text="ContactPhoto Image" ></asp:Label>
            </div>
            <div >
                <asp:FileUpload ID="fuContactPhoto" runat="server" />
                <asp:RegularExpressionValidator ID="rexp" runat="server" ControlToValidate="fuContactPhoto"
     ErrorMessage="Only .gif, .jpg, .png, .tiff and .jpeg"
     ValidationExpression="(.*\.([Gg][Ii][Ff])|.*\.([Jj][Pp][Gg])|.*\.([Bb][Mm][Pp])|.*\.([pP][nN][gG])|.*\.([tT][iI][iI][fF])$)"></asp:RegularExpressionValidator>
             </div>
        </div>
        <div >

            <asp:Button ID="btnAdd" runat="server" Text="Add"
                OnClick="btnAdd_Click" />
        </div>
    </section> 

        <hr />--%>
        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" OnRowCreated="GridView1_RowCreated">
            <Columns>
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                    SortExpression="ContactName" />
                <asp:BoundField DataField="ContactPhotoPath" HeaderText="ContactPhotoPath" 
                    SortExpression="ContactPhotoPath" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image runat="server" ImageUrl='<%#  Eval("ContactPhotoPath") %>' Height="50px"/>                        
                    </ItemTemplate>
                </asp:TemplateField>
                <%-- <asp:BoundField DataField="ContactPhotoPath" HeaderText="ContactPhotoPath" 
                    SortExpression="ContactPhotoPath" />--%>
          <%--  </Columns>
        </asp:GridView>
        <asp:Label runat="server" ID="lblQWERT"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MultiuserAddressBookV2ConnectionString2 %>" 
            SelectCommand="SELECT [ContactName], [ContactPhotoPath] FROM [ContactPhoto]">
        </asp:SqlDataSource>--%>
    </form>
</body>
</html>
