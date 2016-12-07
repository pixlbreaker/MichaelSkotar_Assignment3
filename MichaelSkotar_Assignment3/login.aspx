<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="login.aspx.cs" Inherits="MichaelSkotar_Assignment3.login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Admin.aspx" OnAuthenticate="Login1_Authenticate"></asp:Login>
</asp:Content>