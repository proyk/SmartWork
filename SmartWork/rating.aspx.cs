using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using AjaxControlToolkit;


public partial class starratingsystem : System.Web.UI.Page
{
   
    
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

   

    public void btnsubmit_Click(object sender, EventArgs e )
    {
       /* connection cn = new connection();
        cn.conn();
        SqlCommand cmd = new SqlCommand("insert into rating values(@rval)", cn.con);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@rval", Rating1.CurrentRating.ToString());
     
       
       
        cmd.ExecuteNonQuery();
       
        Response.Redirect(Request.Url.AbsoluteUri);
        */
        labelValue1.Text = Rating1.CurrentRating.ToString();
    }




    protected void Rating1_Changed(object sender, RatingEventArgs e)
    {
        labelValue1.Text = Rating1.CurrentRating.ToString();
    }
}