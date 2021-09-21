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

public partial class user_chat : System.Web.UI.Page
{
    connection cn = new connection();
    string uss;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            cn.conn();

        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }
         uss= Request.QueryString["user"].ToString();
        Session["rec_user"] = uss;
        usr.InnerText = uss;
        unm.Text = uss;
        SqlCommand getUser = new SqlCommand("select * from users where username='" + uss + "'", cn.con);
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
                   
                    list_img.Src = row["u_profile"].ToString();
                    lbl_img.Src = row["u_profile"].ToString();
                }
            }
        }

       
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from msg where (rec_user='" + uss + "'and send_user='" + Session["user"].ToString() + "') or (rec_user='" + Session["user"].ToString() + "' and send_user='" +uss + "')", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rept.DataSource = dt;
        rept.DataBind();


        cn.con.Close();


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {


    }
    protected void rept_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    [WebMethod]

    public static void GetMsg(string msg, string susr, string rusr)
    {
        string msgs = string.Empty;
        connection cn = new connection();
        cn.conn();
        using (cn.con)
        {

            string ins = "insert into msg(mdata,send_user,rec_user,mtime) VALUES('" + msg + "','" + susr + "','" + rusr + "',GETDATE())";
            using (SqlCommand cmd = new SqlCommand(ins, cn.con))
            {
                int i = cmd.ExecuteNonQuery();
            }


        }
    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from msg where (rec_user='" + uss + "'and send_user='" + Session["user"].ToString() + "') or (rec_user='" + Session["user"].ToString() + "' and send_user='" + uss + "')", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rept.DataSource = dt;
        rept.DataBind();


        cn.con.Close();

    }
}