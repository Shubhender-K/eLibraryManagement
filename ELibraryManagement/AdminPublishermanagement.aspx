<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPublishermanagement.aspx.cs" Inherits="ELibraryManagement.AdminPublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
         <div class="row">
             <%--Left columns--%>
             <div class="col-md-5">
                 <div class="card">
                     <div class="card-body">
                        
                          <div class="row">
                             <div class="col text-center">
                                    <h4>Publisher Details</h4>  
                             </div>
                         </div>
                          <div class="row">
                             <div class="col text-center">
                                 <img src="images/publisher.png" width="100" />                       
                             </div>
                         </div>
                         <div class="row">
                             <div class="col text-center">
                                    <hr />                               
                             </div>
                         </div>
                         <%--first  row--%>
                          <div class="row">
                             <div class="col-md-4">
                                 <label>Publisher Id</label>
                                    <div class="form-group text-center">
                                        <div class="input-group"> 
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Id"></asp:TextBox>
                                         <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Go" OnClick="Button2_Click" />
                                            </div>
                                        </div>                               
                             </div>             
                             <div class="col-md-8">
                                         <label>Publisher Name</label> 
 
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Publisher Name">
                                            </asp:TextBox>
                                        </div>                     
                             </div>
                         </div>
                         <%--Three Buttons--%>
                            <div class="row">
                             <div class="col-4">
                                 <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-block btn-success " Text="Add" OnClick="Button1_Click" />
                             </div>
                                <div class="col-4">
                                 <asp:Button ID="Button3" runat="server" CssClass="btn btn-lg btn-block btn-warning " Text="Update" OnClick="Button3_Click" />
                             </div>
                                <div class="col-4">
                                 <asp:Button ID="Button4" runat="server" CssClass="btn btn-lg btn-block btn-danger " Text="Delete" OnClick="Button4_Click" />
                             </div>
                         </div>
                     </div>
                 </div>
                 <a href="Homepage.aspx"> << Back to home><br><br></a>
             </div>
              <%--Right columns--%>
             <div class="col-md-7">
                 <div class="card">
                     <div class="card-body">                     
                          <div class="row">
                             <div class="col text-center">
                                    <h4>Publisher List</h4> 
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                    <hr />                               
                             </div>
                         </div>
                          <div class="row">
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                             <div class="col ">
                                 <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                         <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
