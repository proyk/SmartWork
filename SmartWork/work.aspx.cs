using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class work : System.Web.UI.Page
{
    connection cn;
    string od="";
 
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new connection();
        od = Request.QueryString["oid"].ToString();
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
        SqlCommand cmd = new SqlCommand("SELECT postprojectt.project_name,postprojectt.project_desc,postprojectt.pid,bid.budget,bid.work_day,order_work.startdate,order_work.ow_id FROM postprojectt JOIN bid ON postprojectt.pid=bid.p_id JOIN order_work ON order_work.bid=bid.b_id where bid.bid_status='accepted' and (ow_status='working' or ow_status='review') and ow_id="+od+" and bid.bid_user='" + Session["user"].ToString() + "'", cn.con);
        
        SqlDataReader sda = cmd.ExecuteReader();
        if(sda.Read())
        {
            wt.Text = sda["project_name"].ToString();
           let.Text= getdays(sda["startdate"].ToString(),sda["work_day"].ToString());
           desc.Text = sda["project_desc"].ToString();
           prc.Text = sda["budget"].ToString();
          
        }
        sda.Close();
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
    protected void proceed_Click(object sender, EventArgs e)
    {
        string status = "";
        if (flupload.HasFile)
        {

            string i;
        
            flupload.SaveAs(MapPath("~/work_file/" + flupload.FileName));
            i = "work_file/" + flupload.FileName.ToString();

            
            SqlCommand gsta = new SqlCommand("select * from order_work where ow_id=" + od + "", cn.con);
            SqlDataReader sda;
            sda = gsta.ExecuteReader();
            if (sda.Read())
            {
                if (sda["ow_status"].ToString() == "working")
                {
                    status = "delivered";
                }
                else if (sda["ow_status"].ToString() == "review")
                {
                    status = "re-delivered";
                }
              
            }
            sda.Close();
            SqlCommand cmd = new SqlCommand("update order_work set ow_status='" + status + "',ow_file='"+i+"',enddate=GETDATE() where ow_id=" + od + "", cn.con);
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                //Response.Write("<script>alert('Work Delievered....')</script>");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work Delievered....');window.location.href='works.aspx';", true);
            }
            else
            {
                Response.Write("<script>alert('Work is NOT Delievered....')</script>");
        }

        
        }
        else
        {
            Response.Write("<script>alert('Plz Select the Work File....')</script>");
        }
    }
}