using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            username.Text = Session["user"].ToString();
        }
        else
        {
           // Response.Redirect("SignIN_SignUp.aspx");
        }
        connection cn = new connection();
        cn.conn();
         SqlCommand getUser=new SqlCommand("select * from users where username='"+Session["user"].ToString()+"'",cn.con);
        SqlDataAdapter sd = new SqlDataAdapter(getUser);
        DataTable dt = new DataTable();
        sd.Fill(dt);


        foreach (DataColumn col in dt.Columns)
        {
            foreach (DataRow row in dt.Rows)
            {
                if (row["u_profile"].ToString() == "")
                {

                }
                else
                {
                    pf.Src = row["u_profile"].ToString();
                }
            }
        }
    }
}
