<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminbookissuing.aspx.cs" Inherits="ELibraryManagement.Adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
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
                                    <h4>Book Issuing</h4>  
                             </div>
                         </div>
                          <div class="row">
                             <div class="col text-center">
                                 <img src="images/books1.png" width="100"/>                  
                             </div>
                         </div>
                         <div class="row">
                             <div class="col text-center">
                                    <hr />                               
                             </div>
                         </div>
                         <%--first  row--%>
                          <div class="row">
                             <div class="col-md-6">
                                 <label>Member Id</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Member ID">
                                            </asp:TextBox>
                                        </div>             
                                        </div>                               
                             </div>             
                             <div class="col-md-6">
                                         <label>Book ID</label> 
                                 <div class="form-group text-center">
                                 <div class="input-group"> 
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Id"></asp:TextBox>
                                         <asp:Button ID="Button2" runat="server" CssClass="btn btn-dark" Text="Go" OnClick="Button2_Click" />
                                            </div> 
                                      </div>          
                             </div>
                         </div>

                          <%--second  row--%>
                             <div class="row">
                             <div class="col-md-6">
                                 <label>Member Name</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Member Name" ReadOnly="True">
                                            </asp:TextBox>
                                        </div>             
                                        </div>                               
                             </div>             
                             <div class="col-md-6">
                                         <label>Book Name</label> 
                                 <div class="form-group text-center">
                                 <div class="input-group"> 
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                         
                                            </div> 
                                      </div>          
                             </div>
                         </div>

                          <%--third  row--%>
                             <div class="row">
                             <div class="col-md-6">
                                 <label>Start Date</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                        </div>             
                                        </div>                               
                             </div>             
                             <div class="col-md-6">
                                         <label>End Date</label> 
                                 <div class="form-group text-center">
                                 <div class="input-group"> 
                                        <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                         
                                            </div> 
                                      </div>          
                             </div>
                         </div>
                         <%--Two Buttons--%>
                            <div class="row">
                             <div class="col-6">
                                 <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-block btn-primary " Text="Issue" OnClick="Button1_Click" />
                             </div>
                                <div class="col-6">
                                 <asp:Button ID="Button3" runat="server" CssClass="btn btn-lg btn-block btn-success " Text="Return" OnClick="Button3_Click" />
                             </div>
                         </div>
                     </div>
                 </div>
                 <a href="Homepage.aspx"> << Back to home</a><br><br>
             </div>
              <%--Right columns--%>
             <div class="col-md-7">
                 <div class="card">
                     <div class="card-body">                     
                          <div class="row">
                             <div class="col text-center">
                                    <h4>Issued Book List</h4> 
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                    <hr />                               
                             </div>
                         </div>
                          <div class="row">
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                             <div class="col ">
                                 <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                     <Columns>
                                         <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                         <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                         <asp:BoundField DataField="book_id" HeaderText="Book ID" />
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
