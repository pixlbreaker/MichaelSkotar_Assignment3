<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Flashdrive.aspx.cs" Inherits="MichaelSkotar_Assignment3.Products.Flashdrive" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Flash Drive</h1>
        <br />
        <div class="row">
            <div class="col-md-6">
                <img class="img-responsive" src="../Images/flashdrive.jpg" />
            </div>
            <div class="col-md-6">
                <h2>Product Description: </h2>
                <p>
                   Experience reliable, portable storage with a SanDisk Cruzer USB Flash Drive. 
                    Why leave your photos, videos and music at home when they'll fit in your pocket? 
                    Trust the minds behind flash memory to make it easy to store, transfer and share your digital files wherever you go. 
                </p>
                <h2>Specifications: </h2>
                <p>
                    Take it all with you on reliable SanDisk USB flash drives<br />
                    Transfer with confidence when moving images and other files from PC to PC or other CE devices<br />
                    Available in 4GB, 8GB,16GB and 32GB capacities<br />
                    Ideal for video-the easy way to store, share and playyour favorite video files.
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