  <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMembermanagement.aspx.cs" Inherits="ELibraryManagement.AdminMembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script type="text/javascript">
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
                                    <h4>Member Details</h4>  
                             </div>
                         </div>
                          <div class="row">
                             <div class="col text-center">
                                 <img src="images/generaluser.png" width="100"/>                  
                             </div>
                         </div>
                         <div class="row">
                             <div class="col text-center">
                                    <hr />                               
                             </div>
                         </div>
                         <%--first  row--%>
                          <div class="row">
                               <div class="col-md-3">
                                         <label>Member ID</label> 
                                 <div class="form-group text-center">
                                 <div class="input-group"> 
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Member Id"></asp:TextBox>
                                         <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Go" OnClick="Button2_Click" />
                                            </div> 
                                      </div>          
                             </div>
                             <div class="col-md-4">
                                 <label>Full Name</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Full Name" ReadOnly="True">
                                            </asp:TextBox>
                                        </div>             
                                        </div>                               
                             </div>             
                             <div class="col-md-5">
                                 <label>Account Status</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <div class="input-group"> 
                                        <asp:TextBox ID="TextBox7" CssClass="form-control mr-1" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success mr-1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                                  <asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning mr-1" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                                  <asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger mr-1" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                                
                                               
                                                 
                                            </div> 
                                        </div>             
                                        </div>                               
                             </div>    
                         </div>

                          <%--second  row--%>
                             <div class="row">
                             <div class="col-md-3">
                                 <label>DOB</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly="True" TextMode="Date">
                                            </asp:TextBox>
                                        </div>             
                                        </div>                               
                             </div>             
                             <div class="col-md-4">
                                         <label>Contact Number</label> 
                                 <div class="form-group text-center">
                                 <div class="input-group"> 
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Contact number" ReadOnly="True"></asp:TextBox>                                   
                                            </div> 
                                      </div>          
                             </div>
                                   <div class="col-md-5">
                                         <label>Email ID</label> 
                                 <div class="form-group text-center">
                                 <div class="input-group"> 
                                        <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Email Id" ReadOnly="True" TextMode="Email"></asp:TextBox>                                   
                                            </div> 
                                      </div>          
                             </div>
                         </div>

                          <%--third  row--%>
                             <div class="row">
                             <div class="col-md-4">
                                 <label>State</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder=" State"  runat="server" ReadOnly="True">
                                            </asp:TextBox>
                                        </div>             
                                        </div>                               
                             </div>             
                             <div class="col-md-4">
                                         <label>City</label> 
                                 <div class="form-group text-center">
                                 <div class="input-group"> 
                                        <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" ReadOnly="True" placeholder="City"></asp:TextBox>
                                         
                                            </div> 
                                      </div>          
                             </div>
                                  <div class="col-md-4">
                                 <label>Pin Code</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox9" CssClass="form-control" placeholder="Pincode"  runat="server" ReadOnly="True">
                                            </asp:TextBox>
                                        </div>             
                                        </div>                               
                             </div>     
                         </div>
                           <%--fourth  row--%>
                         <div class="row">
                             <div class="col-12">
                                 <label>Full Postal Address</label>
                                    <div class="form-group text-center">
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox10" CssClass="form-control" placeholder="Full Address"  runat="server" ReadOnly="True" TextMode="MultiLine" Rows="2">
                                            </asp:TextBox>
                                        </div>             
                                        </div>                               
                             </div>          
                             </div>
                         <%--One Button--%>
                            <div class="row">
                             <div class="col-8 mx-auto">
                                 <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-block btn-danger" Text="Delete User permanently" OnClick="Button1_Click" />
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
                                    <h4>Member List</h4> 
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                    <hr />                               
                             </div>
                         </div>
                          <div class="row">
                             
                             <div class="col ">
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                                 <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                         <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                         <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                         <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                         <asp:BoundField DataField="email" HeaderText="Email Id" SortExpression="email" />
                                         <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
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
