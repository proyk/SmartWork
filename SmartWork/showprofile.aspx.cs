using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class showprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {

        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }
        deltA();
        Alpha();
    }
    public void getrate()
    {
        connection cn = new connection();
        cn.conn();
        int i = 0;
        SqlCommand cmd = new SqlCommand("select * from ratings where r_to='" + Session["user"].ToString() + "'", cn.con);
        SqlDataReader sd = cmd.ExecuteReader();
        if(sd.Read())
        {
            i = int.Parse(sd["rval"].ToString());

        }
        
        for(int j=0;j<i;j++)
        {
           Response.Write( "<li><i class='fa fa-star'></i></li>");
        }
    }
    public void deltA()
    {
        connection cn = new connection();
        cn.conn();
        SqlCommand cmd = new SqlCommand("select * from users where username='" + Session["user"].ToString() + "'", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach (DataColumn col in dt.Columns)
        {
            foreach (DataRow row in dt.Rows)
            {
                fullname.Text = row["fname"].ToString();
                lastname.Text = row["lname"].ToString();
                mob.Text = row["mob"].ToString();
                email.Text = row["email"].ToString();
                des.Text = row["u_desc"].ToString();
                skl.Text = row["skills"].ToString();
                name.Text= row["username"].ToString();
                ppt.Src = row["u_profile"].ToString();
                if (row["u_wall"].ToString() == "")
                {

                }
                else
                {
                    pwall.Src = row["u_wall"].ToString();
                }
                //prf.ImageUrl = row["u_profile"].ToString();
            }
        }

    }
    public void Alpha()
    {
      
      

    }
    protected void profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }
}