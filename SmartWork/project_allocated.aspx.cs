using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class project_allocated : System.Web.UI.Page
{
    connection cn;
    public string val;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new connection();
        if (Session["user"] != null)
        {
            cn.conn();
            prjj();
        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }
    }
    public void prjj()
    {
        SqlCommand cmd = new SqlCommand("select postprojectt.pid,postprojectt.project_name,postprojectt.max_budget,postprojectt.min_budget,bid.bid_user,postprojectt.project_status,order_work.ow_status,order_work.ow_file from postprojectt join bid on postprojectt.pid=bid.p_id join  order_work on order_work.bid=bid.b_id where bid.bid_status='accepted' and (ow_status='delivered' or ow_status='re-delivered' or ow_status='viewed') and user_name='" + Session["user"].ToString() + "'", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        prj.DataSource = dt;
        prj.DataBind();
    }
    protected void review_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)(sender);
        string val = btn.CommandArgument;
        SqlCommand cmd = new SqlCommand("update order_work set ow_status='review' where pid=" + val + "", cn.con);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work Review....');window.location.href='index.aspx';", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work Not Review....');window.location.href='project_allocated.aspx';", true);
        }

    }
    string tmp;
    protected void confirm_Click(object sender, EventArgs e)
    {
        string title = "Rate A Freelancer";
        LinkButton btn = (LinkButton)(sender);
        string val = btn.CommandArgument;
        SqlCommand cd=new SqlCommand("select bid.bid_user,bid.budget from bid inner join order_work on bid.p_id=order_work.pid where order_work.pid="+val+"",cn.con);
        SqlDataReader sdr = cd.ExecuteReader();
        string bb = "";
        while (sdr.Read())
        {
            tmp = sdr["bid_user"].ToString();
            bb = sdr["budget"].ToString();
        }
        sdr.Close();
        delta.Text = tmp;


        int rsr = (int.Parse(bb.ToString()) * 20) / 100;
        int rest = int.Parse(bb.ToString()) - rsr;
        SqlCommand cmd = new SqlCommand("update order_work set ow_status='complete',o_amount='"+rest+"' where pid=" + val + "", cn.con);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
           
            SqlCommand sp=new SqlCommand("update postprojectt set project_status='completed' where pid="+val+"",cn.con);
            int rr = sp.ExecuteNonQuery();
                if(rr>0)
                {
           
            SqlCommand ccd = new SqlCommand("select max_budget from postprojectt where pid='" +val + "'", cn.con);
            SqlDataReader sd = ccd.ExecuteReader();
            int mx=0;
            if (sd.Read())
            {
                mx = int.Parse(sd["max_budget"].ToString());
                
            }
                int d=mx-int.Parse(bb.ToString());
                int sest = (mx * 20) / 100;
                int hh = d - sest;
              

                    sd.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work Completed.... Your Rest Money "+hh.ToString()+" Will Be Credited To Your Account... ')", true);
              
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "');", true);

                }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work Not Completed....');window.location.href='project_allocated.aspx';", true);
        }
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)(sender);
        string val = btn.CommandArgument;
        SqlCommand cmd = new SqlCommand("update order_work set ow_status='cancel' where pid=" + val + "", cn.con);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            SqlCommand sp=new SqlCommand("update postprojectt set project_status='cancelled' where pid="+val+"",cn.con);
            int rr = sp.ExecuteNonQuery();
                if(rr>0)
                {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work Cancelled....');window.location.href='index.aspx';", true);
                }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work Not Cancelled....');window.location.href='project_allocated.aspx';", true);
        }
    }
    protected void filedownload_Click(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        SqlCommand cmd = new SqlCommand("update order_work set ow_status='viewed' where ow_file='" + filePath + "'", cn.con);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work is Viewed....')", true);

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Work is Not Viewed....')", true);
            //Response.Write("<script>alert('Work is NOT Viewed....')</script>");
        }
        // string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
       // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "redirect", "window.location.href='project_allocated.aspx';", true);
        prjj();
        Response.End();
        
    }
    protected void sub_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into ratings values('"+Rating1.CurrentRating.ToString()+"','"+delta.Text+"','"+Session["user"]+"')", cn.con);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Rated Succesfully....')", true);
           
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Rated Failed....')", true);
            //Response.rite("<script>alert('Work is NOT Viewed....')</script>");
        }
    }
}