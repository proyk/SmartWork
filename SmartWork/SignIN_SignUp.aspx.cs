using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SignIN_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void signin_Click(object sender, EventArgs e)
    {
        connection cn = new connection();
        cn.conn();
        SqlCommand cmd = new SqlCommand("select * from users where username=@username and password=@word", cn.con);
        cmd.Parameters.AddWithValue("@username", uname.Text);
        cmd.Parameters.AddWithValue("word", pass.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        int i = cmd.ExecuteNonQuery();
        if (dt.Rows.Count > 0)
        {
            Session["user"] = uname.Text; 
            Response.Redirect("index.aspx");

        }
        else
        {
            user.Text = "Your Username and Password is incorrect";
           
            user.CssClass = "alert alert-danger";
            uname.Text = "";
            pass.Text = null;

        }  
    }
  
    protected void start_Click(object sender, EventArgs e)
    {
        connection cn = new connection();
        cn.conn();
        SqlCommand cmd = new SqlCommand("select * from users where username=@username", cn.con);
        cmd.Parameters.AddWithValue("@username", suser.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        int i = cmd.ExecuteNonQuery();
        if (dt.Rows.Count > 0)
        {
            errr.Text = "Username is Already exist";
            errr.Visible = true;

        }
        else
        {
            if (spass.Text == cnfpass.Text)
            {
                SqlCommand ccmd = new SqlCommand("insert into users(fname,location,username,password,email) values(@fname,@location,@username,@password,@email)", cn.con);
                ccmd.Parameters.AddWithValue("@fname", fullname.Text);
                ccmd.Parameters.AddWithValue("@location", location.Text);
                ccmd.Parameters.AddWithValue("@username", suser.Text);
                ccmd.Parameters.AddWithValue("@password", spass.Text);
                ccmd.Parameters.AddWithValue("@email", email.Text);
                int j = ccmd.ExecuteNonQuery();
                if (j > 0)
                {
                    user.Text = "Successfully SignUp,Please Sign In";
                    user.CssClass = "alert alert-success";
                    suser.Text = null;
                    spass.Text = null;
                    email.Text = null;
                    cnfpass.Text = null;
                }
            }
            else
            {
                errr.Text = "Password And Confirm Password Must be Same";
                errr.Visible = true;
            }
        }
    }
}