<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="ELibraryManagement.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <div class="row">
             <div class="col-md-6 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col text-center">
                                 <img width="150" src="images/adminuser.png" />                        
                             </div>
                         </div>
                          <div class="row">
                             <div class="col text-center">
                                    <h3>Admin login</h3>                               
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
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Email">
                                            </asp:TextBox>
                                        </div>  
                                  <div class="form-group">
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password">
                                            </asp:TextBox>
                                        </div> 
                                  <div class="form-group">
                                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-success btn-lg btn-block" Text="Log In" OnClick="Button1_Click" />
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
