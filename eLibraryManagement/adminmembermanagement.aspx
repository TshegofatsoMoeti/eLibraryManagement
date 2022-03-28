<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="eLibraryManagement.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).Ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center><h4>Member List</h4>
                                <img width="90" src="imgs/generaluser.png"/></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">

                             <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox1" runat="server"
                                            placeholder="Member ID"></asp:TextBox>
                                         <asp:LinkButton Class="btn btn-primary btn-sm" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i 
                                             class="fas fa-check-circle"></i></asp:LinkButton>
                                        
                                    </div>
                                </div>                            
                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox2" runat="server"
                                      placeholder="Member ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                     <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox3" runat="server"
                                            placeholder="Account Statsu" ReadOnly="True"></asp:TextBox>

                                         <asp:LinkButton Class="btn btn-success btn-sm m-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i 
                                             class="fas fa-check-circle"></i></asp:LinkButton>

                                          <asp:LinkButton Class="btn btn-warning btn-sm m-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i 
                                             class="far fa-pause-circle"></i></asp:LinkButton>

                                          <asp:LinkButton Class="btn btn-danger btn-sm m-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i 
                                             class="fas fa-times-circle"></i></asp:LinkButton>
                                        
                                    </div>
                                </div>
                            </div>
                             
                        </div><br />

                         <div class="row">

                            <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox4" runat="server"
                                      placeholder=" " ReadOnly="True" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Phone Number</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox5" runat="server"
                                      placeholder="Phone No" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-5">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" runat="server"
                                      placeholder="Email" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Province</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server"
                                      placeholder="Province" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox8" runat="server"
                                      placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label>Postal Code</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" runat="server"
                                      placeholder="Postal Code" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>

                        <div class="row">

                           <div class="col">
                                <label>Full Home Address</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox10" runat="server" 
                                        placeholder="Full Address" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            
                        </div><br />

                        <div class="row">

                            <div class="col">
                                <div class="d-grid">
                                   <asp:Button Class="btn btn-danger btn-lg btn-block" ID="Button2" 
                                       runat="server" Text="DELETE USER PERMANENTLY" OnClick="Button2_Click" />
                                </div>
                            </div>


                        </div><br />

                        <div class="row">
                            <div class="col">
                                 <a href="#"><< Back Home</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center><h4>Member List</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView Class="table table-striped table-boredered" ID="GridView1" 
                                    runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="province" HeaderText="Province" SortExpression="province" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
