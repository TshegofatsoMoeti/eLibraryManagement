<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="eLibraryManagement.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).Ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Author Details</h2>
                                    <img width="75" src="imgs/writer.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                            type="text" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="GO" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Author Name</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                            type="text" placeholder="Name"></asp:TextBox><br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <div class="d-grid">
                                 <asp:Button class="btn btn-success btn-lg" ID="Button2" 
                                     runat="server" Text="ADD" OnClick="Button2_Click" />
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="d-grid">
                                 <asp:Button class="btn btn-primary btn-lg" ID="Button3" 
                                     runat="server" Text="UPDATE" OnClick="Button3_Click" />
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="d-grid">
                                 <asp:Button class="btn btn-danger btn-lg" ID="Button4" 
                                     runat="server" Text="DELETE" OnClick="Button4_Click" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row">
                            <div class="col">
                                 <a href="#"><< Back Home</a>
                            </div>
                        </div>

            </div>

    
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h3>Author List</h3></center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-borederd" ID="GridView1" 
                                    runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
