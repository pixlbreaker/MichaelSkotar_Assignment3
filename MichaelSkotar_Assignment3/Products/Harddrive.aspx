<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Harddrive.aspx.cs" Inherits="MichaelSkotar_Assignment3.Products.Harddrive" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Hard Drive</h1>
        <br />
        <div class="row">
            <div class="col-md-6">
                <img class="img-responsive" src="../Images/harddrive.jpg" />
            </div>
            <div class="col-md-6">
                <h2>Product Description: </h2>
                <p>
                    Whether you’re a photographer, video editor, digital artist, or want to build your own system, look no further than WD Black drives as your go-to solution. 
                    WD Black drives deliver great performance for storing large multimedia files of photos, videos and applications.
                </p>
                <h2>Specifications: </h2>
                <p>
                    Hard Drive / Type:Internal<br />
                    Hard Drive / Capacity:4 TB<br />
                    Hard Drive / Spindle Speed:7200 RPM<br />
                    Hard Drive / Interface Type:Serial ATA<br />
                    Hard Drive / Size:3.5"<br />
                    Hard Drive / Data Transfer Rate:6 Gbps<br />
                    Buffer Size:64 MB
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
                <asp:TextBox runat="server" ID="quantity" CssClass="form-control col-md-4" TextMode="Number" Min="1" Max="10"/>
            </div>
            <div class="col-md-4">
                <asp:LinkButton runat="server" id="purchase" OnClick="PurchaseBtn_Click" CssClass="btn btn-primary">Purchase</asp:LinkButton>
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
