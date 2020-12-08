using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //login button
                    LinkButton2.Visible = true; //signup button
                    LinkButton3.Visible = false; //logout button
                    LinkButton5.Visible = false; //hello user button
                    LinkButton4.Visible = false;
                    LinkButton6.Visible = true; //admin login button
                    LinkButton7.Visible = false; //author management button
                    LinkButton8.Visible = false; //publisher management button
                    LinkButton9.Visible = false; //book inventory button
                    LinkButton10.Visible = false; //book issuing button
                    LinkButton11.Visible = false; //member management button
                    LinkButton12.Visible = false; // Admin button
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //login button
                    LinkButton2.Visible = false; //signup button
                    LinkButton3.Visible = true; //logout button
                    LinkButton5.Visible = true; //hello user button
                    LinkButton4.Visible = true;
                    LinkButton5.Text = "Hello " + Session["username"].ToString();
                    LinkButton12.Visible = false; //admin button
                    LinkButton6.Visible = true; //admin login button
                    LinkButton7.Visible = false; //author management button
                    LinkButton8.Visible = false; //publisher management button
                    LinkButton9.Visible = false; //book inventory button
                    LinkButton10.Visible = false; //book issuing button
                    LinkButton11.Visible = false; //member management button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //login button
                    LinkButton2.Visible = false; //signup button
                    LinkButton3.Visible = true; //logout button
                    LinkButton5.Visible = false; //hello user button
                    LinkButton4.Visible = true;
                    LinkButton12.Visible = true;

                    LinkButton6.Visible = false; //admin login button
                    LinkButton7.Visible = true; //author management button
                    LinkButton8.Visible = true; //publisher management button
                    LinkButton9.Visible = true; //book inventory button
                    LinkButton10.Visible = true; //book issuing button
                    LinkButton11.Visible = true; //member management button
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAuthormanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPublishermanagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookInventory.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminbookissuing.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMembermanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //login button
            LinkButton2.Visible = true; //signup button
            LinkButton3.Visible = false; //logout button
            LinkButton5.Visible = false; //hello user button

            LinkButton6.Visible = true; //admin login button
            LinkButton7.Visible = false; //author management button
            LinkButton8.Visible = false; //publisher management button
            LinkButton9.Visible = false; //book inventory button
            LinkButton10.Visible = false; //book issuing button
            LinkButton11.Visible = false; //member management button

            Response.Redirect("Homepage.aspx");
        }
        //user profile button
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userprofile.aspx");
        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminprofile.aspx");
        }
    }
}