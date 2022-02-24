<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUmaster.master" AutoEventWireup="true" CodeFile="ContactForm.aspx.cs" Inherits="DUwebsite_ContactForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h1>Contact Form</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            Name :
        </div>
        <div class="col-md-9">
            <asp:TextBox runat="server" ID="txtName" ></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            Enrollment No :
        </div>
        <div class="col-md-9">
            <asp:TextBox runat="server" ID="txtEnroll" ></asp:TextBox>
            
        </div>
    </div>

   
</asp:Content>

