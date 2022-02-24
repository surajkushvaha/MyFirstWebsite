<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentEnrollmentForm.aspx.cs" Inherits="ValidationControl_StudentEnrollmentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 151px;
        }
        .auto-style2 {
            height: 61px;
        }
        .auto-style3 {
            width: 151px;
            height: 61px;
        }
        .auto-style4 {
            height: 32px;
        }
        .auto-style5 {
            width: 151px;
            height: 25px;
        }
        .auto-style6 {
            height: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Login (If Already Enrolled)</h1>
     <table>
         <tr>
             <td class="auto-style6"></td>
             <td class="auto-style6"> </td>
             <td class="auto-style6">
                 <asp:Label ID="lblLoginMsg" runat="server" BackColor="#CCFFCC" ForeColor="#33CC33"></asp:Label>
                 <asp:ValidationSummary ID="vsLogin" runat="server" BackColor="#FF99CC" BorderColor="Red" BorderStyle="Double" BorderWidth="1px" DisplayMode="List" ForeColor="Red" ValidationGroup="Login" />
             </td>
             <td class="auto-style6"> </td>
         </tr>
         <tr>
             <td>Username</td>
             <td>: </td>
             <td><asp:TextBox ID="txtLoginUserName" runat="server" ValidationGroup="Login"></asp:TextBox> </td>
             <td>
                 <asp:RequiredFieldValidator ID="rfvLoginUser" runat="server" ControlToValidate="txtLoginUserName" Display="None" ErrorMessage="Enter UserName" ValidationGroup="Login"></asp:RequiredFieldValidator>
             </td>
         </tr>
          <tr>
             <td>Password</td>
             <td>: </td>
             <td><asp:TextBox ID="txtLoginPassword" runat="server" ValidationGroup="Login"></asp:TextBox> </td>
             <td>
                 <asp:RequiredFieldValidator ID="rfvLoginPass" runat="server" ControlToValidate="txtLoginPassword" Display="None" ErrorMessage="Enter Password" ValidationGroup="Login"></asp:RequiredFieldValidator>
              </td>
         </tr>
         <tr>
             <td></td>
             <td></td>
             <td><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ValidationGroup="Login"></asp:Button> </td>
             <td>&nbsp;</td>
         </tr>
     </table>
    <h1>Student Enrollment Form</h1>
    <table>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblErrorMsg" runat="server" BackColor="#CCFFFF" BorderColor="#33CC33" BorderStyle="Double" BorderWidth="1px" ForeColor="#33CC33"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="vsRegistrationForm" runat="server" BackColor="#FFFFCC" BorderColor="Red" BorderStyle="Double" BorderWidth="1px" ForeColor="Red" HeaderText="Kindly Solve This Error(s)" ValidationGroup="EnrollmentStudent" />
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td>*</td>
            <td>Name</td>
            <td>:</td>
            <td><asp:TextBox ID="txtName" runat="server" ValidationGroup="EnrollmentStudent"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="None" ErrorMessage="Please Enter Your Name" ForeColor="Red" ValidationGroup="EnrollmentStudent"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">*</td>
            <td class="auto-style2">Enrollment No</td>
            <td class="auto-style2">:</td>
            <td class="auto-style2"><asp:TextBox ID="txtEnrollNo" runat="server" ValidationGroup="EnrollmentStudent"></asp:TextBox></td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvEnrollNo" runat="server" ControlToValidate="txtEnrollNo" Display="None" ErrorMessage="Please Enter Your EnrollmentNo" ForeColor="Red" ValidationGroup="EnrollmentStudent"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEnrollNo" runat="server" ErrorMessage="Enter Proper Enroll No" ControlToValidate="txtEnrollNo" ForeColor="Red" ValidationExpression="\d{12}" Display="None" ValidationGroup="EnrollmentStudent"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>*</td>
            <td>Institute</td>
            <td>:</td>
            <td>
                <asp:DropDownList runat="server" ID="ddlInstitute" ValidationGroup="EnrollmentStudent">
                    <asp:ListItem Value="-1" Text="Select Institute"></asp:ListItem>
                    <asp:ListItem Value="DIET" Text="Darshan Institute of Enggineering & Technology"></asp:ListItem>
                    <asp:ListItem Value="DIETDS" Text="Darshan Institute of Enggineering & Technology - Diploma Studies"></asp:ListItem>
                    <asp:ListItem Value="SOE" Text="School of Engineering - Darshan University"></asp:ListItem>
                </asp:DropDownList>

            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="rfvSelectInst" runat="server" ControlToValidate="ddlInstitute" Display="None" ErrorMessage="Select Your Institute" ForeColor="Red" InitialValue="-1" ValidationGroup="EnrollmentStudent"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>*</td>
            <td>Department</td>
            <td>:</td>
            <td>
                <asp:DropDownList runat="server" ID="ddlDepartment" ValidationGroup="EnrollmentStudent">
                    <asp:ListItem Value="-1" Text="Select Department"></asp:ListItem>
                    <asp:ListItem Value="CE" Text="Computer Enggineering"></asp:ListItem>
                    <asp:ListItem Value="CI" Text="Civil Enggineering"></asp:ListItem>
                    <asp:ListItem Value="ME" Text="Mechanical Engineering"></asp:ListItem>
                    <asp:ListItem Value="EE" Text="Electrical Engineering"></asp:ListItem>
                    <asp:ListItem Value="Comm." Text="School of Commerce"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="rfvSelectDept" runat="server" ControlToValidate="ddlDepartment" Display="None" ErrorMessage="Select Your Department" ForeColor="Red" InitialValue="-1" ValidationGroup="EnrollmentStudent"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>Birth Date</td>
            <td>:</td>
            <td><asp:TextBox ID="txtBirthDate" runat="server" ValidationGroup="EnrollmentStudent"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:CompareValidator ID="cvBirthDate" runat="server" ControlToValidate="txtBirthDate" Display="None" ErrorMessage="provide proper date (dd-mm-yyyy)" ForeColor="Red" Operator="DataTypeCheck" Type="Date" ValidationGroup="EnrollmentStudent"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>Semester</td>
            <td>:</td>
            <td><asp:TextBox ID="txtSem" runat="server" ValidationGroup="EnrollmentStudent"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RangeValidator ID="rvSem" runat="server" ControlToValidate="txtSem" Display="None" ErrorMessage="Fill the Semester ( Between 1 to 8 )" ForeColor="Red" MaximumValue="8" MinimumValue="1" Type="Integer" ValidationGroup="EnrollmentStudent"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>Email</td>
            <td>:</td>
            <td><asp:TextBox ID="txtEmail" runat="server" ValidationGroup="EnrollmentStudent"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Proper Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None" ValidationGroup="EnrollmentStudent"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>*</td>
            <td>Mobile No</td>
            <td>:</td>
            <td><asp:TextBox ID="txtMobileNo" runat="server" ValidationGroup="EnrollmentStudent"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ControlToValidate="txtMobileNo" Display="None" ErrorMessage="Please Enter Mobile No" ForeColor="Red" ValidationGroup="EnrollmentStudent"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revMobileNo" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Enter Proper mobile number" ForeColor="Red" ValidationExpression="\d{10}" Display="None" ValidationGroup="EnrollmentStudent"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>*</td>
            <td>Password</td>
            <td>:</td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="EnrollmentStudent"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server"  ControlToValidate="txtPassword" Display="None" ErrorMessage="Please Enter Your Password" ForeColor="Red" ValidationGroup="EnrollmentStudent"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" Display="None" ErrorMessage="Password should be atleast 8 charater and contain number and unique character" ForeColor="Red" ValidationExpression="^(?=.[A-Za-z])(?=.\d)(?=.[$@$!%#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>Retype Password</td>
            <td>:</td>
            <td><asp:TextBox runat="server" TextMode="Password" ID="txtRTPassword" ValidationGroup="EnrollmentStudent"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="rfvRTPassword" runat="server" ControlToValidate="txtRTPassword" Display="None" ErrorMessage="Retype Your Password" ForeColor="Red" ValidationGroup="EnrollmentStudent"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvRTPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRTPassword" ErrorMessage="Password Should be Matched" ForeColor="Red" Display="None" ValidationGroup="EnrollmentStudent"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
          
            <td class="auto-style4">

                <asp:CheckBox ID="chkTnC" runat="server" Text="I accept the Terms &amp; Conditionn." CssClass="AcceptedAgreement" ValidationGroup="EnrollmentStudent" />

            </td>
            <td class="auto-style4">
<asp:CustomValidator runat="server" ID="CheckBoxRequired" EnableClientScript="true"
    OnServerValidate="CheckBoxRequired_ServerValidate"
    ClientValidationFunction="CheckBoxRequired_ClientValidate" Display="Dynamic" ErrorMessage="You must select this box to proceed." ForeColor="Red" ValidationGroup="EnrollmentStudent">You must select this box to proceed.</asp:CustomValidator></td>
        
        </tr>
        
        <tr>
            <td></td>
            <td></td>
            <td colspan="2"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="EnrollmentStudent" /></td>
        </tr>
    </table>
    </div>
    </form>
    <script>
        function CheckBoxRequired_ClientValidate(sender, e) {
            e.IsValid = jQuery(".AcceptedAgreement input:checkbox").is(':checked');
        }
    </script>
</body>
</html>
