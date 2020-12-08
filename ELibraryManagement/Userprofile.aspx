<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="ELibraryManagement.Userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
         <div class="row">
             <div class="col-md-5">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col text-center">
                                      <img width="100" src="images/generaluser.png" />                                
                             </div>
                         </div>
                          <div class="row">
                             <div class="col text-center">
                                    <h4>Your Profile</h4>  
                                 <span>Account Status -</span>
                                 <asp:Label ID="Label1" CssClass="badge badge-pill badge-info" runat="server" Text="Your status"></asp:Label>
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
                                 <label>Full name</label>
                                    <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Name">
                                            </asp:TextBox>
                                        </div>                               
                             </div>             
                             <div class="col-md-6 ">
                                         <label>Date Of Birth</label> 
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Date of Birth" TextMode="Date">
                                            </asp:TextBox>
                                        </div>                     
                             </div>
                         </div>
                         <%--second  row--%>
                               <div class="row">
                             <div class="col-md-6">
                                 <label>Contact number</label>
                                    <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact number" TextMode="Number">
                                            </asp:TextBox>
                                        </div>                               
                             </div>             
                             <div class="col-md-6 ">
                                         <label>Email Id</label> 
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email">
                                            </asp:TextBox>
                                        </div>                     
                             </div>
                         </div>
                         <%--third row--%>
                         <div class="row">
                             <div class="col-md-4">
                                 <label>State</label>
                                    <div class="form-group text-center">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Punjab" Value="Punjab"></asp:ListItem>
                                            <asp:ListItem Text="UP" Value="UP"></asp:ListItem>
                                            <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
                                            <asp:ListItem Text="Gujarat" Value="Gujarat"></asp:ListItem>
                                        </asp:DropDownList>
                                        </div>                               
                             </div>             
                             <div class="col-md-4 ">
                                         <label>City</label> 
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="City">
                                            </asp:TextBox>
                                        </div>                     
                             </div>

                                <div class="col-md-4 ">
                                         <label>Pincode</label> 
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Pincode" TextMode="Number">
                                            </asp:TextBox>
                                        </div>                     
                             </div>
                         </div>
                         <%--fourth row--%>
                         <div class="row">
                             <div class="col">
                                 <label>Ful address</label>
                                    <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2">
                                            </asp:TextBox>
                                        </div>                               
                             </div>             
                         </div>
                          <%--fifth row--%>
                        <div class="row">
                             <div class="col text-center">
                                 <span class="badge badge-pill badge-info">Login Credentials</span> 
                             </div>
                         </div>
                         <div class="row ">                            
                             <div class="col-md-4">
                                 <label>User ID</label>
                                    <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="User ID" ReadOnly="True">
                                            </asp:TextBox>
                                        </div>                               
                             </div>             
                             <div class="col-md-4">
                                         <label>Old Password</label> 
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Old Password" TextMode="Password" ReadOnly="True">
                                            </asp:TextBox>
                                        </div>                     
                             </div>
                             <div class="col-md-4">
                                         <label>New Password</label> 
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="New Password" TextMode="Password">
                                            </asp:TextBox>
                                        </div>                     
                             </div>
                         </div>
                          <%--final button--%>
                            <div class="row">
                             <div class="col-8 mx-auto text-center">
                                  <div class="form-group">
                                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-lg btn-block" Text="Update" />
                                        </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <a href="Homepage.aspx"> << Back to home</a><br><br>
             </div>

             <div class="col-md-7">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col text-center">
                                 <img src="images/books1.png" width="100"/>                            
                             </div>
                         </div>
                          <div class="row">
                             <div class="col text-center">
                                    <h4>Your Issued books</h4> 
                                 <asp:Label ID="Label2" CssClass="badge badge-pill badge-info" runat="server" Text="Your books info"></asp:Label>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                    <hr />                               
                             </div>
                         </div>
                          <div class="row">
                             <div class="col ">
                                 <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server">

                                 </asp:GridView>                             
                             </div>
                         </div>
                     </div>
                 </div>
                 <a href="Homepage.aspx"> << Back to home</a><br><br>
             </div>
         </div>
     </div>
</asp:Content>
