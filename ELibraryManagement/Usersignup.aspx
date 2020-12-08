<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usersignup.aspx.cs" Inherits="ELibraryManagement.Usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
         <div class="row">
             <div class="col-md-8 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col text-center">
                                      <img width="100" src="images/generaluser.png" />                                
                             </div>
                         </div>
                          <div class="row">
                             <div class="col text-center">
                                    <h4>User Sign Up</h4>                               
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
                                 <label>Full address</label>
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
                             <div class="col-md-6">
                                 <label>User ID</label>
                                    <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="User ID">
                                            </asp:TextBox>
                                        </div>                               
                             </div>             
                             <div class="col-md-6 ">
                                         <label>Password</label> 
                                  <div class="form-group text-center">
                                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password">
                                            </asp:TextBox>
                                        </div>                     
                             </div>
                         </div>
                          <%--final button--%>
                            <div class="row">
                             <div class="col text-center">
                                  <div class="form-group">
                                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-success btn-lg btn-block" Text="Sign Up" OnClick="Button1_Click" />
                                        </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <a href="Homepage.aspx"> << Back to home</a><br><br>
             </div>
         </div>
     </div>
</asp:Content>
