using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        filldata();
    }

    public void filldata()
    {
        connection cn = new connection();
        cn.conn();
        SqlCommand cmd = new SqlCommand("select * from category", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rptshow.DataSource = dt;
        rptshow.DataBind();
       


    }
    protected void rptshow_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        HtmlGenericControl divID = (HtmlGenericControl)e.Item.FindControl("cd");
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if ((e.Item.ItemIndex + 1) % 4 == 0)
            {
                divID.Attributes.Add("class", "card bg-success");
            }
            if ((e.Item.ItemIndex + 1) % 4== 1)
            {
                 divID.Attributes.Add("class", "card shd bg-secondary");
            }
            if ((e.Item.ItemIndex + 1) % 4== 2)
            {
                divID.Attributes.Add("class", "card shd bg-warning");
            }
            if ((e.Item.ItemIndex + 1) % 4 == 3)
            {
                divID.Attributes.Add("class", "card shd bg-primary");
            }

        }
    }
    int counter = 0;
protected String GetRowColor()
    {
        string mm = "";
        if (counter % 4 == 0)
            mm="first";
        else if (counter % 4 == 1)
            mm="sec";
       else if (counter % 4 == 2)
            mm="third";
      else if (counter % 4 == 3)
            mm="fourth";
        if (counter <= 3)
        {
            mm="";
            counter++;
        }
        else
        {
            counter = 0;
        }
        return mm;
    }
}