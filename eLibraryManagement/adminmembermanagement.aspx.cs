using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibraryManagement
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void LinkButton4_Click(object sender, EventArgs e) //member id blue button
        {
            getMemberByID();
        }

        protected void LinkButton1_Click(object sender, EventArgs e) //green-active button
        {
            updateAccountStatus("active");
        }

        protected void LinkButton2_Click(object sender, EventArgs e) //yellow-pending button
        {
            updateAccountStatus("pending");
        }

        protected void LinkButton3_Click(object sender, EventArgs e) //red-deactivated button
        {
            updateAccountStatus("deactivated");
        }

        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_login_tbl WHERE " +
                    "member_id = '" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();
                        TextBox3.Text = dr.GetValue(10).ToString();
                        TextBox4.Text = dr.GetValue(1).ToString();
                        TextBox5.Text = dr.GetValue(2).ToString();
                        TextBox6.Text = dr.GetValue(3).ToString();
                        TextBox7.Text = dr.GetValue(4).ToString();
                        TextBox8.Text = dr.GetValue(5).ToString();
                        TextBox9.Text = dr.GetValue(6).ToString();
                        TextBox10.Text = dr.GetValue(7).ToString();
                    }
                   
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateAccountStatus(string status)
        {
            if(checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon); //setup connection to database

                    if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                    {
                        con.Open(); //open it
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE member_login_tbl SET account_status = '" + status + "'" +
                        " WHERE member_id = '" + TextBox1.Text.Trim() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Account Status Updated Successfully');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMember();
        }

        void deleteMember()
        {
            if(checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon); //setup connection to database

                    if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                    {
                        con.Open(); //open it
                    }
                    SqlCommand cmd = new SqlCommand("DELETE From member_login_tbl " +
                        " WHERE member_id = '" + TextBox1.Text.Trim() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Successfully Deleted');</script>");
                    clearForm();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
           
            
        }

        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE " + // query to check member id entered by user
                    "member_id = '" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void clearForm()
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
        }
    }
}