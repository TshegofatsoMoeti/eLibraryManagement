<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="eLibraryManagement.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center><img width="75" src="imgs/generaluser.png "/></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center><h4>Please Sign Up</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox2" runat="server" 
                                        placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox3" 
                                        runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox4" runat="server" 
                                        placeholder="Email" TextMode="Email"></asp:TextBox><br />
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            
                            <div class="col-md-4">
                                <label>Province</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Gauteng" Value="Gauteng">Gauteng</asp:ListItem>
                                        <asp:ListItem Text="Mpumalanga" Value="Mpumalanga">Mpumalanga</asp:ListItem>
                                        <asp:ListItem Text="Limpopo" Value="Limpopo">Limpopo</asp:ListItem>
                                        <asp:ListItem Text="KwaZulu Natal" Value="KwaZulu Natal">KwaZulu Natal</asp:ListItem>
                                        <asp:ListItem Text="Western Cape" Value="Western Cape">Western Cape</asp:ListItem>
                                        <asp:ListItem Text="Eastern Cape" Value="Eastern Cape">Eastern Cape</asp:ListItem>
                                        <asp:ListItem Text="North West" Value="North West">North West</asp:ListItem>
                                        <asp:ListItem Text="Northern Cape" Value="Northern Cape">Northern Cape</asp:ListItem>
                                        <asp:ListItem Text="Free State" Value="Free State">Free State</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" runat="server" 
                                        placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label>Postal Code</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server" 
                                        placeholder="Postal Code" TextMode="Number"></asp:TextBox><br />
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Home Address</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox8" runat="server" 
                                        placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                   <span class="badge bg-info text-dark">Login Credentials</span>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            
                            <div class="col-md-6">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" 
                                        runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox10" runat="server" 
                                        placeholder="Password" TextMode="Password"></asp:TextBox><br />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">                             
                                   <div class="form-group">
                                       <div class="d-grid">
                                          <asp:Button Class="btn btn-success d-inline-block" ID="Button1" 
                                             runat ="server" Text="Sign Up" OnClick="Button1_Click" /><br /><br />
                                       </div>
                                   </div>                               
                            </div>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx"><< Back to home</a><br /><br />

            </div>
        </div>
    </div>

</asp:Content>
