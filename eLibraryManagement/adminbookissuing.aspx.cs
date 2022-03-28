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
    public partial class adminbookissuing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e) // go button
        {
            getBookMemberInfo();
        }

        protected void Button1_Click(object sender, EventArgs e) // issue book button
        {
            if(checkIfBookExists() && checkIfMemberExists())
            {
                if(checkIfIssueBookExists())
                {
                    Response.Write("<script>alert('Book already Issued to this Member ID')</script>");
                }
                else
                {
                    issueBook();
                }
            }
            else
            {
                Response.Write("<script>alert('Something went wrong! Check Book And Member Details')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e) //return book button
        {
            if (checkIfBookExists() && checkIfMemberExists())
            {
                if (checkIfIssueBookExists())
                {
                    returnBook();
                }
                else
                {
                    Response.Write("<script>alert('Unable To Find Book Issued Record')</script>");
                }
            }
        }

        //user defined functions

        void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO book_master_tbl(member_id,member_name," +
                    "book_id,book_name,issue_date,due_date) " +
                    "VALUES(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);

                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock - 1" +
                    "WHERE book_id = '" + TextBox2.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book Issued Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
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

                SqlCommand cmd = new SqlCommand("SELECT full_name FROM member _master_tbl " +
                    "WHERE member_id ='" + TextBox1.Text.Trim() + "';", con);

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

        bool checkIfBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master_tbl " +
                    "WHERE book_id ='" + TextBox2.Text.Trim() + "' AND current_stock > 0;", con);

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

        bool checkIfIssueBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM book_issue_tbl " +
                    "WHERE member_id ='" + TextBox1.Text.Trim() + "' AND book_id = '"+TextBox2.Text.Trim()+"';", con);

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

        void getBookMemberInfo()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("SELECT book_name FROM book_master_tbl " +
                    "WHERE book_id ='" + TextBox2.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID');</script>");
                }

                cmd = new SqlCommand("SELECT full_name FROM member_master_tbl " +
                    "WHERE member_id ='" + TextBox1.Text.Trim() + "';", con);

                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["member_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void returnBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); //setup connection to database

                if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                {
                    con.Open(); //open it
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM book_issue_tbl WHERE " +
                    "book_id ='" + TextBox2.Text.Trim() + "' AND member_id = '" + TextBox1.Text.Trim() + "'; ", con);

                int result = cmd.ExecuteNonQuery();
                

                if (result > 0)
                {
                    if (con.State == System.Data.ConnectionState.Closed) //if connection is closed
                    {
                        con.Open(); //open it
                    }

                    cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock + 1" +
                    "WHERE book_id = '" + TextBox2.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    Response.Write("<script>alert('Error - Invalid Details');</script>");
                }

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book Returned Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if(e.Row.RowType == DataControlRowType.DataRow)
                {
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if( today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}