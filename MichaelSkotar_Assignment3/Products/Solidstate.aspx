<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Solidstate.aspx.cs" Inherits="MichaelSkotar_Assignment3.Products.Solidstate" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Solid State Drive</h1>
        <br />
        <div class="row">
            <div class="col-md-6">
                <img class="img-responsive" src="../Images/solidState.jpg" />
            </div>
            <div class="col-md-6">
                <h2>Product Description: </h2>
                <p>
                   Access your data in a flash with the 250GB 850 Evo 2.5" SATA III solid state drive from Samsung. 
                    With fast read speeds of up to 540MB/s and write rates of up to 520MB/s, this solid state drive lets you transfer large files quickly and easily. 
                    Rapid Mode software also utilizes integrated cache (DRAM) memory to improve processing speeds.
                </p>
                <h2>Specifications: </h2>
                <p>
                    Capacity: 500GB<br />
                    Form Factor: 2.5 inch<br />
                    Interface: SATA 6Gb/s (Compatible with SATA 3Gb/s & SATA 1.5Gb/s)<br />
                    NAND Flash: 32 Layer 3D V-NAND<br />
                    Thickness: 7.0 mm<br />
                    Samsung 3D V-NAND Technology for Exceptional Performance
                </p>
                <h2>Price of Product: </h2>
                <p id="price" runat="server"></p>
            </div>
        </div>
        <hr />

        <div class="col-md-6 form-group">
            <h2>Purchase Product</h2>
            <div class="col-md-4">
                <asp:Label runat="server" AssociatedControlID="quantity" CssClass="control-label">Quantity</asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="quantity" CssClass="form-control col-md-4" TextMode="Number" />
            </div>
            <div class="col-md-4">
                <asp:LinkButton runat="server" OnClick="PurchaseBtn_Click" id="purchase" CssClass="btn btn-primary">Purchase</asp:LinkButton>
            </div>
        </div>
            
        <div class="col-md-6">
            <h2>Rate Product</h2>
            <asp:DropDownList ID="rating" runat="server">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:DropDownList>
            <asp:LinkButton runat="server" id="rate" OnClick="RateBtn_Click" CssClass="btn btn-primary">Rate</asp:LinkButton>
            <asp:TextBox runat="server" ID="comment" CssClass="form-control" TextMode="MultiLine" />
        </div>
        <hr />
    </div>
</asp:Content>
