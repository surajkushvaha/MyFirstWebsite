<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButton.aspx.cs" Inherits="RadioButton_ChechBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>Select Gender :</div>
        <asp:RadioButton runat="server" ID="rdmale" Text="male" GroupName="Gender" OnCheckedChanged="rdmale_CheckedChanged" AutoPostBack="True"/>
        <asp:RadioButton runat="server" ID="rdFemale" Text="Female" GroupName="Gender" AutoPostBack="True" OnCheckedChanged="rdFemale_CheckedChanged"/>
        <br /><asp:Label ID="lblgender" runat="server"></asp:Label>
    </div>

    <div>
        <div>Select collage :</div>
        <asp:RadioButton runat="server" ID="rdDegree" Text="Degree" GroupName="Collage"  AutoPostBack="True" EnableViewState="False" OnCheckedChanged="rdDegree_CheckedChanged"  />
        <asp:RadioButton runat="server" ID="rdDiploma" Text="Diploma" GroupName="Collage" AutoPostBack="True" EnableViewState="False" OnCheckedChanged="rdDiploma_CheckedChanged"  />
        <br />
        <asp:Label ID="lblCollageDegree" runat="server" Visible="False" EnableViewState="False">
            <div>Select Degree Branch :</div>
            <asp:RadioButton runat="server" ID="rdComputer" Text="Computer Engineering - Degree" GroupName="DegreeBranch" /><br />
            <asp:RadioButton runat="server" ID="rdMechanical" Text="Mechanical Engineering - Degree" GroupName="DegreeBranch" /><br />
            <asp:RadioButton runat="server" ID="rdCivil" Text="Civil Engineering - Degree" GroupName="DegreeBranch" /><br />
            <asp:RadioButton runat="server" ID="rdElectrical" Text="Electrical Engineering - Degree" GroupName="DegreeBranch" /><br />
        </asp:Label>
        <asp:Label ID="lblCollageDiploma" runat="server" Visible="False" EnableViewState="False">
            <div>Select Diploma Branch :</div>
            <asp:RadioButton runat="server" ID="rdComputerDiploma" Text="Computer Engineering - Diploma" GroupName="Diplomabranch" /><br />
            <asp:RadioButton runat="server" ID="rdMechanicalDiploma" Text="Mechanical Engineering - Diploma" GroupName="Diplomabranch" /><br />
            <asp:RadioButton runat="server" ID="rdCivilDiploma" Text="Civil Engineering - Diploma" GroupName="Diplomabranch" /><br />
            <asp:RadioButton runat="server" ID="rdElectricalDiploma" Text="Electrical Engineering - Diploma" GroupName="Diplomabranch" /><br />
        
        </asp:Label>

        <br />

        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />

        

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        <br />
        <asp:Label ID="lblMessage" runat="server" EnableViewState="False" Visible="False" BackColor="#66FFFF"></asp:Label> 
        
        
    </div>
        
    </form>
</body>
</html>
