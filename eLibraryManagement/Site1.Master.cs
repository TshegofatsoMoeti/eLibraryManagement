using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user loign link button
                    LinkButton2.Visible = true; //sign up link button

                    LinkButton3.Visible = false; //logout link button
                    LinkButton5.Visible = false; //hello, user

                    LinkButton6.Visible = true; //admin login

                    LinkButton11.Visible = false; //author management link button
                    LinkButton12.Visible = false;//publisher management link button
                    LinkButton8.Visible = false; //book inventory link button
                    LinkButton9.Visible = false; //book issuing link button
                    LinkButton10.Visible = false; //member management link button
                }
                else if(Session["role"].Equals("user"))
                {

                    LinkButton1.Visible = false; //user loign link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton5.Visible = true; //hello, user
                    LinkButton5.Text = Session["username"].ToString();

                    LinkButton6.Visible = true; //admin login

                    LinkButton11.Visible = false; //author management link button
                    LinkButton12.Visible = false;//publisher management link button
                    LinkButton8.Visible = false; //book inventory link button
                    LinkButton9.Visible = false; //book issuing link button
                    LinkButton10.Visible = false; //member management link button
                }
                else if (Session["role"].Equals("admin"))
                {

                    LinkButton1.Visible = false; //user loign link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton5.Visible = true; //hello, user
                    LinkButton5.Text = "Hello Admin";

                    LinkButton6.Visible = false; //admin login

                    LinkButton11.Visible = true; //author management link button
                    LinkButton12.Visible = true;//publisher management link button
                    LinkButton8.Visible = true; //book inventory link button
                    LinkButton9.Visible = true; //book issuing link button
                    LinkButton10.Visible = true; //member management link button
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["full_name"] = " ";
            Session["role"] = " ";
            Session["status"] = " ";

            LinkButton1.Visible = true; //user loign link button
            LinkButton2.Visible = true; //sign up link button

            LinkButton3.Visible = false; //logout link button
            LinkButton5.Visible = false; //hello, user

            LinkButton6.Visible = true; //admin login

            LinkButton11.Visible = false; //author management link button
            LinkButton12.Visible = false;//publisher management link button
            LinkButton8.Visible = false; //book inventory link button
            LinkButton9.Visible = false; //book issuing link button
            LinkButton10.Visible = false; //member management link button

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }
    }
}