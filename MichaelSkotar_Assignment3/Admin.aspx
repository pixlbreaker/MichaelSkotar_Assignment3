<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.cs" Inherits="MichaelSkotar_Assignment3.Admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Welcome Admin!</h1>

        <hr /><br />
        <h3>Sales Information</h3>
        <table class="table">
            <thead>
            <tr>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
            </thead>
            <tbody id="salescont" runat="server">
            </tbody>
        </table>
<br /><br />
        <h3>Rating Information</h3>
        <table class="table">
            <thead>
            <tr>
                <th>Product Name</th>
                <th>Product Rating</th>
                <th>Comment</th>
            </tr>
            </thead>
            <tbody id="ratingcont" runat="server">
            </tbody>
        </table>
    </div><br />
</asp:Content>
