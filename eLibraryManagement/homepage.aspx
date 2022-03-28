<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="eLibraryManagement.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid"/>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our features</h2>
                        <p>Our 3 primary features</p>
                    </center>
                </div>
            </div> 

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150" src="imgs/digital-inventory.png" />
                    <h4>Digital Book Inventory</h4>
                    <p class="text-justify">You can browse as many books as you can, you can upload books
                        with images if available and you acquire a book.
                    </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img width="150" src="imgs/search-online.png" />
                    <h4>Search Books</h4>
                    <p class="text-justify">You can search for any book you want, even though you don't 
                        know the name of the book, you can type the author name.
                    </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img width="150" src="imgs/defaulters-list.png" />
                    <h4>Defaulter List</h4>
                    <p class="text-justify">With the defaulter list, you can check the list for newest 
                        books and mostly read books that you might like. 
                    </p>
                    </center>
                </div>
            </div>
        </div>
    </section>
               
    <section>
        <img src="imgs/in-homepage-banner.jpg" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h4>Our Process</h4>
                        <p>We have a simple 3 step process</p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150" src="imgs/sign-up.png" />
                        <h4>Sign Up</h4>
                        <p class="text-justify">First you have to sign up. It is an easy process,
                            just put in your details and you one click away.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150" src="imgs/search-online.png" />
                        <h4>Search Books</h4>
                        <p class="text-justify">You can search for any book you want, even though you don't 
                        know the name of the book, you can type the author name.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150" src="imgs/library.png" />
                        <h4>Visit Us</h4>
                        <p class="text-justify">Now that you are a member, you can visit the website 
                            anytime you want. Just put in your credentials.
                        </p>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
