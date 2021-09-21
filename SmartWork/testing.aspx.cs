using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class testing : System.Web.UI.Page
{
     connection cn = new connection();
       
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            username.Text = Session["user"].ToString();
        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }
        //if(!IsPostBack)
        cn.conn();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select mdata from msg", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rept.DataSource = dt;
        rept.DataBind();
    }
    protected void send_Click(object sender, EventArgs e)
    {
        SqlConnection.ClearAllPools();
        
        SqlCommand cmd = new SqlCommand("insert into msg values('"+msg.Text+"','"+Session["user"].ToString()+"')",cn.con);
        int res = cmd.ExecuteNonQuery();
        if(res>0)
        {
            warn.Text = "MESSAGE SENT";
            
            cn.con.Close();
        }
        else
        {
            warn.Text = "MESSAGE NOT SENT";
        }
    }
}