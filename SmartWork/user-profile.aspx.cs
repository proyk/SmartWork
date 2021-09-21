using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;

public partial class test : System.Web.UI.Page
{
    public string user = "";
    public string skl;
    connection cn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        user = Request.QueryString["unm"].ToString();
        username.InnerText = user;
        cn.conn();
        SqlCommand getUser=new SqlCommand("select * from users where username='"+user+"'",cn.con);
        SqlDataAdapter sd = new SqlDataAdapter(getUser);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        
        
        foreach (DataColumn col in dt.Columns)
        {
            foreach (DataRow row in dt.Rows)
            {
                fname.InnerText = row["fname"].ToString() + " " + row["lname"].ToString();
                add.InnerText = row["location"].ToString();
                email.InnerText = row["email"].ToString();
                mob.InnerText = row["mob"].ToString();
                desc.InnerText=row["u_desc"].ToString();
                skl = row["skills"].ToString();
                if (row["u_wall"].ToString() == "")
                {

                }
                else
                {
                    p_wall.Src = row["u_wall"].ToString();
                }
                if (row["u_profile"].ToString() == "")
                {

                }
                else
                {
                    u_prf.Src = row["u_profile"].ToString();
                }
                //prf.ImageUrl = row["u_profile"].ToString();
            }
        }
       
    }
    public void getSkill()
    {
        string[] s; 
        char cc = ',';
        s = skl.Split(cc);
        foreach (string mm in s)
        {
            Response.Write("\t<span class='tags'>" + mm + "</span>");
        }
    }

    //[WebMethod]

   /* public static string GetMsg(string msg, string susr, string rusr)
    {
        string msgs = string.Empty;
        connection cn = new connection();
        cn.conn();
        using (cn.con)
        {
            using (SqlCommand cmd = new SqlCommand("insert into msg(mdata,send_user,rec_user,mtime) VALUES(@msg,@subject,@desc,GETDATE())", cn.con))
            {
                cn.con.Open();
                cmd.Parameters.AddWithValue("@msg", msg);
                cmd.Parameters.AddWithValue("@subject", "yash");
                cmd.Parameters.AddWithValue("@desc", "yk");

                int i = cmd.ExecuteNonQuery();
                cn.con.Close();
                if (i == 1)
                {
                    msg = "true";
                }
                else
                {
                    msg = "false";
                }
            }
        }
        return msg;
    }*/
}
