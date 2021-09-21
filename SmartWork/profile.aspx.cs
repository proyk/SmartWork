using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;


public partial class profile : System.Web.UI.Page
{
    int uid=0;
    string pass = "";
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
        
    }
    [WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static List<string> SearchCustomers(String prefixText, int count)
    {
        connection cn = new connection();
        cn.conn();
        //cn.con.Open();
        using (cn.con)
        {

            using (SqlCommand cmd = new SqlCommand())
            {


                cmd.CommandText = "select subname from sub_category where " +
                "subname like @pskill + '%'";
                cmd.Parameters.AddWithValue("@pskill", prefixText);
                cmd.Connection = cn.con;

                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["subname"].ToString());
                    }
                }
                cn.con.Close();
                return customers;
            }
        }
    }
    public void deltA()
    {
        connection cn = new connection();
        cn.conn();
        SqlCommand cmd = new SqlCommand("select * from users where username='"+Session["user"].ToString()+"'",cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt=new DataTable();
        da.Fill(dt);
        udata.DataSource = dt;
        udata.DataBind();
        foreach(DataColumn col in dt.Columns)
        {
            foreach(DataRow row in dt.Rows)
            {
                uid = int.Parse(row["uid"].ToString());
                pass = row["password"].ToString();
            }
        }
        
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        connection cn = new connection();
        cn.conn();
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

        string fnm=(item.FindControl("first_name") as TextBox).Text;
        string lnm = (item.FindControl("last_name") as TextBox).Text;
        string mob = (item.FindControl("mobile") as TextBox).Text;
        string email = (item.FindControl("email") as TextBox).Text;
        string skl=(item.FindControl("skill") as TextBox).Text;
        string ude=(item.FindControl("descc") as TextBox).Text;
        string lc=(item.FindControl("location") as TextBox).Text;
        string pass1 = (item.FindControl("password") as TextBox).Text;
        
        if (pass == pass1)
        {
            if (fpath.HasFile && fwall.HasFile)
            {
               
                    string mpath = "";
                    string wl="";
                    fwall.SaveAs(MapPath("~/upload/"+fwall.FileName));
                    fpath.SaveAs(MapPath("~/upload/" + fpath.FileName));
                    mpath = "~/upload/" + fpath.FileName;
                    wl="~/upload/"+fwall.FileName;
                    SqlCommand cmd = new SqlCommand("update users set fname='" + fnm + "',lname='" + lnm + "',mob='" + mob + "',email='" + email + "',skills='" + skl + "',u_desc='" + ude + "',u_profile='" + mpath + "',location='" + lc+ "',u_wall='"+wl+"' where uid=" + uid + "", cn.con);



                int rs = cmd.ExecuteNonQuery();
                if (rs > 0)
                {
                    Response.Write("<script>alert('Profile Updated')</script>");
                    Response.Redirect("showprofile.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Profile Updated NOt..............')</script>");

                }
            }
            else if(fpath.HasFile)
            {
                string mpath = "";
                fpath.SaveAs(MapPath("~/upload/" + fpath.FileName));
                mpath = "~/upload/" + fpath.FileName;
                SqlCommand cmd = new SqlCommand("update users set fname='" + fnm + "',lname='" + lnm + "',mob='" + mob + "',email='" + email + "',skills='" + skl + "',u_desc='" + ude + "',u_profile='" + mpath + "',location='" + lc + "' where uid=" + uid + "", cn.con);



                int rs = cmd.ExecuteNonQuery();
                if (rs > 0)
                {
                    Response.Write("<script>alert('Profile Updated')</script>");
                    Response.Redirect("showprofile.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Profile Updated NOt..............')</script>");

                }
            }
            else if (fwall.HasFile)
            {
               
                string wl = "";
                fwall.SaveAs(MapPath("~/upload/" + fwall.FileName));
                
               
                wl = "~/upload/" + fwall.FileName;
                SqlCommand cmd = new SqlCommand("update users set fname='" + fnm + "',lname='" + lnm + "',mob='" + mob + "',email='" + email + "',skills='" + skl + "',u_desc='" + ude + "',location='" + lc + "',u_wall='" + wl + "' where uid=" + uid + "", cn.con);



                int rs = cmd.ExecuteNonQuery();
                if (rs > 0)
                {
                    Response.Write("<script>alert('Profile Updated')</script>");
                    Response.Redirect("showprofile.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Profile Updated NOt..............')</script>");

                }
               }
            else
            {
                SqlCommand cmd = new SqlCommand("update users set fname='" + fnm + "',lname='" + lnm + "',mob='" + mob + "',email='" + email + "',skills='" + skl + "',u_desc='" + ude + "',location='" + lc + "' where uid=" + uid + "", cn.con);



                int rs = cmd.ExecuteNonQuery();
                if (rs > 0)
                {
                    Response.Write("<script>alert('Profile Updated')</script>");
                    Response.Redirect("showprofile.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Profile Updated NOt..............')</script>");

                }
            }
        }
        else
        {
            Response.Write("<script>alert('Plz Enter Correct Password')</script>");
        
        }
        
       
        
    }
}