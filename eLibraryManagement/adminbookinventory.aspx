<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="eLibraryManagement.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        
         $(document).Ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          });
       

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
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
                                <center><h4>Book Details</h4>
                                <img id="imgview" width="90" src="books_inventory/books1.png"/></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this);" Class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <div class="row">

                             <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Class="form-control" ID="TextBox1" runat="server"
                                            placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-alert-primary btn-sm" ID="Button4" 
                                            runat="server" Text="GO" OnClick="Button4_Click" />                                       
                                    </div>
                                </div>                            
                            </div>

                            <div class="col-md-8">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox2" runat="server"
                                      placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                             
                        </div><br />

                         <div class="row">

                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English">English</asp:ListItem>
                                        <asp:ListItem Text="Setswana" Value="Setswana">Setswana</asp:ListItem>
                                        <asp:ListItem Text="Zulu" Value="Zulu">Zulu</asp:ListItem>
                                        <asp:ListItem Text="Sepedi" Value="Sepedi">Sepedi</asp:ListItem>
                                        <asp:ListItem Text="Xhosa" Value="Xhosa">Xhosa</asp:ListItem>
                                        <asp:ListItem Text="Venda" Value="Venda">Venda</asp:ListItem>
                                        <asp:ListItem Text="Tsonga" Value="Tsonga">Tsonga</asp:ListItem>
                                        <asp:ListItem Text="Ndebele" Value="Ndebele">Ndebele</asp:ListItem>
                                        <asp:ListItem Text="Afrikaans" Value="Afrikaans">Afrikaans</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1">Publisher 1</asp:ListItem>
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2">Publisher 2</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                
                                <label>Author Name</label>
                                <div class="form-group">
                                   <asp:DropDownList Class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="A1" Value="A1">A1</asp:ListItem>
                                        <asp:ListItem Text="A2" Value="A2">A2</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox3" runat="server"
                                        TextMode="Date"></asp:TextBox>
                                </div>
                           
                            </div>

                            <div class="col-md-4">

                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox Class="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="Advanture" Value="Advanture">Advanture</asp:ListItem>
                                        <asp:ListItem Text="Comic" Value="Comic">Comic</asp:ListItem>
                                        <asp:ListItem Text="Motivatioin" Value="Motivatioin">Motivatioin</asp:ListItem>
                                        <asp:ListItem Text="Self Help" Value="Self Help">Self Help</asp:ListItem>
                                        <asp:ListItem Text="Health" Value="Health">Health</asp:ListItem>
                                        <asp:ListItem Text="Wellness" Value="Wellness">Wellness</asp:ListItem>
                                        <asp:ListItem Text="Crime" Value="Crime">Crime</asp:ListItem>
                                        <asp:ListItem Text="Drama" Value="Drama">Drama</asp:ListItem>
                                        <asp:ListItem Text="Fantasy" Value="Fantasy">Fantasy</asp:ListItem>
                                        <asp:ListItem Text="Horror" Value="Horror">Horror</asp:ListItem>
                                        <asp:ListItem Text="Poetry" Value="Poetry">Poetry</asp:ListItem>
                                        <asp:ListItem Text="Personal Development" Value="Personal Development">Personal Development</asp:ListItem>
                                        <asp:ListItem Text="Romance" Value="Romance">Romance</asp:ListItem>
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction">Science Fiction</asp:ListItem>
                                        <asp:ListItem Text="Suspense" Value="Suspense">Suspense</asp:ListItem>
                                        <asp:ListItem Text="Thriller" Value="Thriller">Thriller</asp:ListItem>
                                        <asp:ListItem Text="Art" Value="Art">Art</asp:ListItem>
                                        <asp:ListItem Text="Autobiography" Value="Autobiography">Autobiography</asp:ListItem>
                                    </asp:ListBox>
                                </div>
                           
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox4" runat="server"
                                      placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Book Price(per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox5" runat="server"
                                      placeholder="000" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label>Book pages</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" runat="server"
                                      placeholder="Book Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server"
                                      placeholder="0" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox8" runat="server"
                                      placeholder="0" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" runat="server"
                                      placeholder="0" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>

                        <div class="row">

                           <div class="col">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox10" runat="server" 
                                        placeholder="Description" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            
                        </div><br />

                        <div class="row">

                            <div class="col-4">
                                <div class="d-grid">
                                   <asp:Button Class="btn btn-success btn-lg btn-block" ID="Button1" 
                                       runat="server" Text="ADD BOOK" OnClick="Button1_Click" />
                                </div>
                            </div>

                            <div class="col-4">
                                <div class="d-grid">
                                   <asp:Button Class="btn btn-primary btn-lg btn-block" ID="Button3" 
                                       runat="server" Text="UPDATE BOOK" OnClick="Button3_Click" /> 
                                </div>
                            </div>

                            <div class="col-4"> 
                                <div class="d-grid">
                                   <asp:Button Class="btn btn-danger btn-lg btn-block" ID="Button2" 
                                       runat="server" Text="DELETE BOOK" OnClick="Button2_Click" />
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
                                <center><h4>Book Inventory List</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView Class="table table-striped table-boredered" ID="GridView1" 
                                    runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" ReadOnly="True" SortExpression="book_id" >                                      
                                        <ControlStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' 
                                                                        Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                                </div>
                                                            </div>

                                                             <div class="row">
                                                                <div class="col-12">

                                                                    &nbsp;Author -
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("author_name") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| Genre -
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("genre") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| Language -&nbsp;
                                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("language") %>' Font-Bold="True"></asp:Label>

                                                                </div>
                                                            </div>

                                                             <div class="row">
                                                                <div class="col-12">

                                                                    Publisher -
                                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("publisher_name") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| Publish date -
                                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("publish_date") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| Pages -
                                                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("no_of_pages") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("edition") %>' Font-Bold="True"></asp:Label>
                                                                </div>
                                                            </div>

                                                             <div class="row">
                                                                <div class="col-12">
                                                                     Cost -
                                                                    <asp:Label ID="label9" runat="server" Text='<%# Eval("book_cost") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="label10" runat="server" Text='<%# Eval("actual_stock") %>' Font-Bold="True"></asp:Label>
                                                                    &nbsp;| Available - 
                                                                    <asp:Label ID="label11" runat="server" Text='<%# Eval("current_stock") %>' Font-Bold="True"></asp:Label>
                                                                </div>
                                                            </div>

                                                             <div class="row">
                                                                <div class="col-12">
                                                                    Description -
                                                                    <asp:Label ID="label12" runat="server" Text='<%# Eval("book_description") %>' Font-Bold="True" Font-Italic="True" Font-Size="Smaller"></asp:Label>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div class="col-lg-2">
                                                            <asp:Image CssClass="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
