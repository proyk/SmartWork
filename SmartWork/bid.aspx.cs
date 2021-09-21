using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class bid : System.Web.UI.Page
{
    string bbid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {

        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }
        bbid = Request.QueryString["bid"].ToString();
        seldata();
      
    }

   
    protected void placebid_Click1(object sender, EventArgs e)
    {
        connection cn = new connection();
        cn.conn();
      

        SqlCommand cmd = new SqlCommand("insert into bid values(@p_id,@bid_desc,@budget,@work_day,@bid_user,@bid_status)", cn.con);
        cmd.Parameters.AddWithValue("@p_id",bbid );
        cmd.Parameters.AddWithValue("@budget", budget.Text);
        cmd.Parameters.AddWithValue("@work_day", days.Text);  
        cmd.Parameters.AddWithValue("@bid_desc", biddesc.Text);
        cmd.Parameters.AddWithValue("@bid_user",Session["user"].ToString());

        cmd.Parameters.AddWithValue("@bid_status", "pending");
        int rss = cmd.ExecuteNonQuery();
        if (rss > 0)
        {
          

            Response.Write("<script>alert('bid placed')</script>");
            Response.Write("<script>alert('After Confirm Your Bid You will Receive Mail of Order')</script>");
            SqlCommand cdd = new SqlCommand("update postprojectt set project_status='bidded' where pid='"+bbid+"' " ,cn.con);
            cdd.ExecuteNonQuery();
            Response.Redirect("index.aspx");
        }
        else
        {
            Response.Write("error");
        }
        
        
    }
    public string min, max;
    public void seldata()
    {
        connection cn = new connection();
        cn.conn();

        SqlCommand cmd = new SqlCommand("select * from postprojectt where pid="+bbid+"",cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
       
        da.Fill(dt);
        foreach (DataColumn col in dt.Columns)
        {
            foreach (DataRow row in dt.Rows)
            {
                bidproject.Text = row["project_name"].ToString();
                projectdesc.Text = row["project_desc"].ToString();
                min = row["min_budget"].ToString();
                max = row["max_budget"].ToString();
            }
        }
        

        budget.ToolTip="Enter Bid Between:"+min+" to "+max+"";
        rng.MinimumValue = min;
        rng.MaximumValue = max;
        rng.ErrorMessage = "Please Enter Between " + min + " to " + max + "";
    }
}