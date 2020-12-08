<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookInventory.aspx.cs" Inherits="ELibraryManagement.AdminBookInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
         function readURL(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();
                 reader.onload = function (e) {
                     $('#imgview').attr('src', e.target.result);
                 };
                 reader.readAsDataURL(input.files[0]); 
             }
         }
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });
     </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <%--Left columns--%>
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col text-center">
                                <h4>Book Details</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <img src="images/books.png" id="imgview" height="150" width="100" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" CssClass="form-control" runat="server" />
                            </div>
                        </div>

                        <%--first  row--%>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="form-group text-center">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Book Id"></asp:TextBox>
                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group text-center">
                                    <div class="form-group text-center">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Book Name">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <%--second  row--%>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group text-center">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="German" Value="German"></asp:ListItem>
                                        <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                        <asp:ListItem Text="Urdu" Value="Urdu"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Name</label>
                                <div class="form-group text-center">
                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1"></asp:ListItem>
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group text-center">
                                    <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Author 1" Value="Author 1"></asp:ListItem>
                                        <asp:ListItem Text="Author 2" Value="Author 2"></asp:ListItem>                                       
                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Date</label>
                                <div class="form-group text-center">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Date" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group text-center">
                                    <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                        <asp:ListItem Text="Comic Book" Value="Comic Book"></asp:ListItem>
                                        <asp:ListItem Text="Self Help" Value="Self Help"></asp:ListItem>
                                        <asp:ListItem Text="Motivation" Value="motivation"></asp:ListItem>
                                        <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
                                        <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>

                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>

                        <%--third  row--%>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group text-center">
                                    <div class="form-group text-center">
                                        <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Edition" runat="server" ReadOnly="False">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Cost(per unit)</label>
                                <div class="form-group text-center">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" ReadOnly="False" placeholder="Book Cost" TextMode="Number"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group text-center">
                                    <div class="form-group text-center">
                                        <asp:TextBox ID="TextBox9" CssClass="form-control" placeholder="Pages" runat="server" ReadOnly="False" TextMode="Number">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--fourth  row--%>
                       <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group text-center">
                                    <div class="form-group text-center">
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Actual Stock" runat="server" ReadOnly="False">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group text-center">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" ReadOnly="True" placeholder="Current Stock"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group text-center">
                                    <div class="form-group text-center">
                                        <asp:TextBox ID="TextBox8" CssClass="form-control" placeholder="Issued Books" runat="server" ReadOnly="True">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                          <%--fifth  row--%>
                          <div class="row">
                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group text-center">
                                    <div class="form-group text-center">
                                        <asp:TextBox ID="TextBox10" CssClass="form-control" placeholder="Book Description" runat="server" TextMode="MultiLine" Rows="2">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                              </div>
                        <%--Three Buttons--%>
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-block btn-success" Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-lg btn-block btn-primary" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="Button4" runat="server" CssClass="btn btn-lg btn-block btn-danger" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="Homepage.aspx"><< Back to home</a><br>
                <br>
            </div>
            <%--Right columns--%>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h4>Book Inventory List</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col ">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                      
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                      
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12 p-2">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                                                </div>
                                                            </div>
                                                             <div class="row">
                                                                <div class="col-12 p-2">
                                                                    
                                                                    Author -
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Genre -
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Language -
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                    
                                                                </div>
                                                            </div>
                                                             <div class="row">
                                                                <div class="col-12 p-2">
                                                                    
                                                                    Publisher -
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish Date -
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                    
                                                                </div>
                                                            </div>
                                                             <div class="row">
                                                                <div class="col-12 p-2">
                                                                   
                                                                    Cost -
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available -
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                   
                                                                </div>
                                                            </div>
                                                             <div class="row">
                                                                <div class="col-12 p-2">
                                                                 
                                                                    Description -
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                 
                                                                </div>
                                                            </div>
                                                        </div>
                                                         <div class="col-lg-2">
                                                             <asp:Image ID="Image1" runat="server" CssClass="img-fluid" ImageUrl='<%# Eval("book_img_link") %>' />
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
