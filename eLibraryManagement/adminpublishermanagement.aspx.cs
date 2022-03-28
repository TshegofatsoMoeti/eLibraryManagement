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
    public partial class adminpublishermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e) //add button
        {
            if (checkIfPublisherExists())
            {
                Response.Write("<script>alert('Auhtor ID already Exists')<script>");
            }
            else
            {
                addNewPublisher();
            }
        }

        protected void Button2_Click(object sender, EventArgs e) //update button
        {
            if (checkIfPublisherExists())
            {
                updatePublisher();
            }
            else
            {
                Response.Write("<script>alert('Author ID doesn't Exists')<script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e) //delete button
        {
            if (checkIfPublisherExists())
            {
                deletePublisher();
            }
            else
            {
                Response.Write("<script>alert('Author ID Not Found')<script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e) //Go button
        {
            getPublisherByID();
        }

        void getPublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master_tbl WHERE " + // query to check member id entered by user
                    "publisher_id = '" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Publisher ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("DELETE from publisher_master_tbl WHERE publisher_id = @publisher_id;", con);

                cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher Successfully Deleted');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("UPDATE publisher_master_tbl SET author_name = @publisher_name" +
                    "WHERE publisher_id = @publisher_id;", con);

                cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher Successfully Updated');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master_tbl(publisher_id,publisher_name) " +
                    "VALUES(@publisher_id,@publisher_name)", con);

                cmd.Parameters.AddWithValue("publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher Successfully Added');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfPublisherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master_tbl WHERE " + // query to check member id entered by user
                    "publisher_id = '" + TextBox1.Text.Trim() + "'", con);
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
    }
}