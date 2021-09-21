using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class paymentaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

   
    protected void pay_Click(object sender, EventArgs e)
    {
        
 
 /*
        connection cn = new connection();
        cn.conn();
        SqlCommand pmd = new SqlCommand("insert into payment(@card_number,@card_cvv,@card_holder_name)", cn.con);
        pmd.Parameters.AddWithValue("@card_number",ccnumber.Text);
        pmd.Parameters.AddWithValue("@card_cvv",cccvc.Text);
        pmd.Parameters.AddWithValue("@card_holder_name",cname.Text);
        int res = pmd.ExecuteNonQuery();
        if (res > 0)
        {
            Response.Write("<script>alert('Project Posted Succesfully')</script>");
        }*/
    }

}
