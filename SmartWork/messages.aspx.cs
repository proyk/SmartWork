using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;
using System.Web.Script.Services;
public partial class messages : System.Web.UI.Page
{
    connection cn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        // if(!IsPostBack)

        if (Session["user"] != null)
        {
            cn.conn();

        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }
        Session["rec_user"] = Session["user"].ToString();
        userss();

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from msg where (rec_user='" + usr.InnerText + "'and send_user='" + Session["user"].ToString() + "') or (rec_user='" + Session["user"].ToString() + "' and send_user='" + usr.InnerText + "')", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rept.DataSource = dt;
        rept.DataBind();


        cn.con.Close();


    }
    public void userss()
    {
        SqlCommand cmd = new SqlCommand("select * from users where username not in('" + Session["user"].ToString() + "')", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        chatlist.DataSource = dt;
        chatlist.DataBind();

    }
    protected void rept_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void chatlist_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Session["rec_user"] = e.CommandArgument.ToString();
        usr.InnerText = Session["rec_user"].ToString();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {


    }

    [WebMethod]

    public static void GetMsg(string msg,string susr,string rusr)
    {
        string msgs = string.Empty;
        connection cn = new connection();
        cn.conn();
        using (cn.con)
        {
           
                string ins = "insert into msg(mdata,send_user,rec_user,mtime) VALUES('" + msg + "','" + susr + "','" + rusr + "',GETDATE())";
                using(SqlCommand cmd = new SqlCommand(ins, cn.con))
                { 
                int i = cmd.ExecuteNonQuery();
                }

        
        }
    }
}