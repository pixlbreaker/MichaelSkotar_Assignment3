<%@ Page EnableEventValidation="true" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ShoppingCart.aspx.cs" Inherits="MichaelSkotar_Assignment3.ShoppingCart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

            <h2>Shopping Cart</h2>
            <p class="lead">List of products in your shopping cart</p>
            <br />
            
            <asp:ListView ID="cartlist" runat="server">
                <LayoutTemplate>
                    <div>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                    </div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="row" margin-bottom: 5px;">
						<div class="col-md-3">
							<p style="margin-top: 10px; word-wrap: break-word;"><strong>Name: </strong><span><%#Eval ("Product.Name") %></span></p>
						</div>
						<div class="col-md-3">
							<p style="margin-top: 10px; word-wrap: break-word;"><strong>Quantity: </strong><span><%#Eval ("Quantity") %></span></p>
						</div>
						<div class="col-md-3">
							<p style="margin-top: 10px; word-wrap: break-word;"><strong>Total: </strong><span>$ <%#Eval ("Product.Price") %></span></p>
						</div>
                        <div class="col-md-3">
                            <asp:Button ID="deleteBtn" OnClick="Delete_Click" runat="server" Text='Delete Item' CssClass="btn btn-danger" style="margin-top: 3px;" ToolTip='<%# Eval("Product.Name") %>' />
                        </div>
				    </div>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="col-md-8">
                        <h3>No items in shopping cart.</h3>
                    </div>
                </EmptyDataTemplate>
            </asp:ListView>
    <asp:Button ID="buyBtn" OnClick="Buy_Click" runat="server" Text='Purchase Items' CssClass="btn btn-success" style="margin-top: 3px;"/>
</asp:Content>
