using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            username.InnerText = Session["user"].ToString();
            connection cs = new connection();
            cs.conn();
            SqlCommand cmd = new SqlCommand("select * from users where username='"+Session["user"].ToString()+"'",cs.con);
            SqlDataReader sda = cmd.ExecuteReader();
            if(sda.Read())
            {
                if (sda["u_profile"].ToString() == "")
                {

                }
                else
                {
                    pr_pic.Src = sda["u_profile"].ToString();
                    
                }
            }
            datafill();
        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }
          
    }
    public void datafill()
    {
        connection cs = new connection();
        cs.conn();
        SqlCommand cmd = new SqlCommand("select * from postprojectt where user_name NOT IN ('" + Session["user"].ToString() + "') and project_status='posted'", cs.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rept.DataSource = dt;
        rept.DataBind();
    }
    public string gg(string sms)
    {
        char[] sep={','};
        string[] ar = sms.Split(sep);
        string data = "";
        foreach(string skl in ar)
        {
            data += "<li><a href='#' title=''>" +skl + "</a></li>";
          }
        return data;
    }
}