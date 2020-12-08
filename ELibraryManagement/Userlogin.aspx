<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="ELibraryManagement.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/login_stylesheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
         <div class="row">
             <div class="col-md-6 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col text-center">
                                      <img width="150" src="images/generaluser.png" />                                
                             </div>
                         </div>
                          <div class="row">
                             <div class="col text-center">
                                    <h3>Member login</h3>                               
                             </div>
                         </div>
                         <div class="row">
                             <div class="col text-center">
                                    <hr />                               
                             </div>
                         </div>
                            <div class="row">
                             <div class="col text-center">
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Member ID">
                                            </asp:TextBox>
                                        </div>  
                                  <div class="form-group">
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password">
                                            </asp:TextBox>
                                        </div> 
                                  <div class="form-group">
                                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-success btn-lg btn-block" Text="Log In" OnClick="Button1_Click" />
                                        </div> 
                                 <div class="form-group">
                                    <a href="Usersignup.aspx" class="signuplink"> <input id="Button2" type="button" class="btn btn-info btn-block btn-lg"  value="Sign Up" /></a>
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
