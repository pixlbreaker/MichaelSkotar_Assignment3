<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MichaelSkotar_Assignment3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="jumbotron" style="color:black;">
            <h1>Flash Driver</h1>
            <p class="lead">This is a site for all your storage needs. Your go to place for Hard drives, Solid State Drives, and SD Cards.</p>
            <p><a href="ShoppingCart.aspx" class="btn btn-primary btn-lg">Shopping Cart &raquo;</a></p>
        </div>

        <div class="row">
            <div class="col-md-4">
                <h2>Hard Drive</h2>
                <img class="img-responsive" style="height:300px" src="Images/harddrive.jpg"/>
                <p>
                   WD Black hard drives are designed for desktop PC and power users who demand performance, with a variety of upgrade options available.
                </p>
                
                <p>
                    <a class="btn btn-primary btn-lg" href="Products/Harddrive.aspx">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Solid State Drive</h2>
                <img class="img-responsive" style="height:300px" src="Images/solidState.jpg"/>
                <p>
                    Access your data in a flash with the 250GB 850 Evo 2.5" SATA III solid state drive from Samsung. 
                    With fast read speeds of up to 540MB/s and write rates of up to 520MB/s, this solid state drive lets you transfer large files quickly and easily. 
                    Rapid Mode software also utilizes integrated cache (DRAM) memory to improve processing speeds.
                </p>
                <p>
                    <a class="btn btn-primary btn-lg" href="Products/Solidstate.aspx">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Flash Drive</h2>
                <img class="img-responsive" style="height:300px" src="Images/flashdrive.jpg"/>
                <p>
                    Experience reliable, portable storage with a SanDisk Cruzer USB Flash Drive. 
                    Why leave your photos, videos and music at home when they'll fit in your pocket? 
                    Trust the minds behind flash memory to make it easy to store, transfer and share your digital files wherever you go. 
                </p>
                <p>
                    <a class="btn btn-primary btn-lg" href="Products/Flashdrive.aspx">Learn more &raquo;</a>
                </p>
            </div>
        </div>
</asp:Content>
