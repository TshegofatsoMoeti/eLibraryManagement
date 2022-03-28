<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="eLibraryManagement.adminbookissuing" %>
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
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center><h4>Book Issuing</h4>
                                <img width="90" src="imgs/books.png"/></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox1" runat="server"
                                      placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox2" runat="server"
                                            placeholder="Book ID"></asp:TextBox>
                                        <asp:Button Class="btn btn-info btn-sm" ID="Button5" runat="server" 
                                            Text="GO" OnClick="Button5_Click" />
                                    </div>
                                </div>                            
                            </div>
                        </div><br />

                         <div class="row">

                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox3" runat="server"
                                      placeholder="Author Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox4" runat="server"
                                      placeholder="Author Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                           
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox5" runat="server"
                                      placeholder=" " TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" runat="server"
                                      placeholder=" " TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                           
                        </div><br />

                        <div class="row">
                            <div class="col-6">
                                <div class="d-grid">
                                   <asp:Button Class="btn btn-primary btn-lg btn-block" ID="Button1" 
                                       runat="server" Text="ISSUE BOOK" OnClick="Button1_Click" />
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="d-grid">
                                   <asp:Button Class="btn btn-success btn-lg btn-block" ID="Button2" 
                                       runat="server" Text="RETURN BOOK" OnClick="Button2_Click" />
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

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center><h4>Issued Book List</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView Class="table table-striped table-boredered" ID="GridView1" 
                                    runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
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
