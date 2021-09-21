using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class works : System.Web.UI.Page
{
    connection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new connection();
        if (Session["user"] != null)
        {
            cn.conn();
            pgwork();
        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }
    }
    public void pgwork()
    {
        SqlCommand cmd = new SqlCommand("SELECT postprojectt.project_name,bid.work_day,order_work.startdate,order_work.ow_id FROM postprojectt JOIN bid ON postprojectt.pid=bid.p_id JOIN order_work ON order_work.bid=bid.b_id where bid.bid_status='accepted'and (ow_status='working' or ow_status='review') and bid.bid_user='" + Session["user"].ToString() + "'", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        pwork.DataSource = dt;
        pwork.DataBind();
    }
    public string getdays(string d, string ii)
    {
        DateTime oDate = Convert.ToDateTime(d);
        DateTime now = DateTime.Now;
        TimeSpan dd = now.Subtract(oDate);
        int days = (int)dd.TotalDays;
        int wd = int.Parse(ii);
        string left = (wd - days).ToString();
        if ((wd - days) == 0 || (wd - days) <= 0)
        {
            left = "Deadline OverRuled";
        }
        return left;
    }
    protected void work_done_Click(object sender, EventArgs e)
    {
    }
    protected void work_done_Click1(object sender, EventArgs e)
    {
       /* LinkButton btn = (LinkButton)(sender);
        string val = btn.CommandArgument;
        string status = "";
        SqlCommand gsta = new SqlCommand("select * from order_work", cn.con);
        SqlDataReader sda;
        sda = gsta.ExecuteReader();
        if(sda.Read())
        {
            if(sda["ow_status"].ToString()=="working")
            {
                status = "delivered";
            }
            else if(sda["ow_status"].ToString()=="review")
            {
                status = "re-delivered";
            }
            sda.Close();
        }
        
        SqlCommand cmd = new SqlCommand("update order_work set ow_status='"+status+"',enddate=GETDATE() where pid=" + val + "", cn.con);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            Response.Write("<script>alert('Work Delievered....')</script>");
        }
        else
        {
            Response.Write("<script>alert('Work is NOT Delievered....')</script>");
        }*/
    }
    protected void bb_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('Work Delievered....')</script>");
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work Delievered....');window.location.href='index.aspx';", true);
      //  ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('checking');window.location.href='Resources.aspx';", true);
        //Response.Redirect("index.aspx");
    }
}