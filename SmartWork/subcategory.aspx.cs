using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class subcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        filldata();
    }
    public void filldata()
    {
        connection cn = new connection();
        cn.conn();
        SqlCommand cmd = new SqlCommand("select * from sub_category", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rptsub.DataSource = dt;
        rptsub.DataBind();



    }
}