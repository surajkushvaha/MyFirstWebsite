<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBox.aspx.cs" Inherits="CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <%-- <div>
        <asp:CheckBox ID="chkCricket" Text="Cricket"  runat="server"    />
        <asp:CheckBox ID="chkFootball" Text="Football" runat="server"    />
        <asp:CheckBox ID="chkAll" Text="Select All"  runat="server" AutoPostBack="True" OnCheckedChanged="chkAll_CheckedChanged"  />
        <asp:Button  ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br />
        <asp:Label ID="lblmessage"  runat="server" ></asp:Label>
     </div>--%>
     <div>
         <asp:CheckBox ID="chkDegree" Text="Degree" runat="server" />
         <asp:CheckBox ID="chkDiploma" Text="Diploma" runat="server" />
         <%--<asp:CheckBox ID="chkSelectAll" Text="SelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="chkSelectAll_CheckedChanged" />--%>
         <asp:Button ID="btnSubmitCollage" Text="Submit" runat="server" OnClick="btnSubmitCollage_Click"   />

          <br />
          <asp:CheckBox ID="chkSelectall" runat="server" AutoPostBack="true" Visible="false" Text="SelectAll    " OnCheckedChanged="chkSelectall_CheckedChanged" />

          <asp:Label ID="lblCollageDegree" runat="server"  Visible="False" EnableViewState="False" >
            <div>Select Degree Branch :</div>
            <asp:CheckBox runat="server" ID="chkComputer" Text="Computer Engineering - Degree"  /><br />
            <asp:CheckBox runat="server" ID="chkMechanical" Text="Mechanical Engineering - Degree"  /><br />
            <asp:CheckBox runat="server" ID="chkCivil" Text="Civil Engineering - Degree"  /><br />
            <asp:CheckBox runat="server" ID="chkElectrical" Text="Electrical Engineering - Degree"  /><br />
        </asp:Label>
        <asp:Label ID="lblCollageDiploma" runat="server" Visible="False" EnableViewState="False" >
            <div>Select Diploma Branch :</div>
            <asp:CheckBox runat="server" ID="chkComputerDiploma" Text="Computer Engineering - Diploma"  /><br />
            <asp:CheckBox runat="server" ID="chkMechanicalDiploma" Text="Mechanical Engineering - Diploma"  /><br />
            <asp:CheckBox runat="server" ID="chkCivilDiploma" Text="Civil Engineering - Diploma"  /><br />
            <asp:CheckBox runat="server" ID="chkElectricalDiploma" Text="Electrical Engineering - Diploma"  /><br />
        
        </asp:Label>
         <br />
         <asp:Button ID="btnSubmitBranch" Visible="false" runat="server" Text="Submit Branch" OnClick="btnSubmitBranch_Click" />
         <br />
         <asp:Label ID="lblSelectedBranch" runat="server" EnableViewState="false"></asp:Label>
        <%--<asp:label id="lblerror"  runat="server" visible="false"  ></asp:label>--%>
     </div>
        

        
        
    </form>
</body>
</html>
