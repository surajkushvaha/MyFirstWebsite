<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AddressBook.master" AutoEventWireup="true" CodeFile="StateList.aspx.cs" Inherits="AdminPanel_State_StateList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
   <section class="mx-3 rounded p-2 bg-dark">
        <div class="d-flex justify-content-between">
                <h2 class="text-info">State List</h2>
                <asp:HyperLink runat="server" ID="add" NavigateUrl="~/AdminPanel/State/StateAddEditPage.aspx"><span class="btn btn-success">+ Add</span></asp:HyperLink>
        </div>

        <div class="text-center">
                <asp:GridView CssClass="table table-striped table-dark "   ID="gvState" runat="server"></asp:GridView>
        </div>

    </section>
</asp:Content>

