using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

public partial class post_project : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"]!=null)
        {
           
            
        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }

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

    protected void ddlcurrency_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlbudget_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (pupload.HasFile)
        {

            String imgupload;
            pupload.SaveAs(MapPath("~/upload/" + pupload.FileName));
            imgupload = "~/upload/" + pupload.FileName.ToString();
            fl.Value = imgupload;
        }
        string title = "Payment";
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "');", true);
        
       
       
    }


    protected void pay_Click(object sender, EventArgs e)
    {
        
            connection cn = new connection();
            cn.conn();

            SqlCommand cmd = new SqlCommand("insert into postprojectt values(@project_name,@project_desc,@project_image,@project_skill,@user,GETDATE(),@min_budget,@max_budget,@project_status); SELECT SCOPE_IDENTITY() ; ", cn.con);
            cmd.Parameters.AddWithValue("@project_name", pname.Text);
            cmd.Parameters.AddWithValue("@project_desc", pdesc.Text);
            cmd.Parameters.AddWithValue("@project_skill", pskill.Text);
            cmd.Parameters.AddWithValue("@project_image", fl.Value);
            cmd.Parameters.AddWithValue("@user", Session["user"].ToString());
            cmd.Parameters.AddWithValue("@min_budget", minbudget.Text);
            cmd.Parameters.AddWithValue("@max_budget", maxbudget.Text);
            cmd.Parameters.AddWithValue("@project_status", "posted");
            //int rs = cmd.ExecuteNonQuery();
            int rmpid = int.Parse(cmd.ExecuteScalar().ToString());
            if (rmpid > 0)
            {

                SqlCommand cc = new SqlCommand("INSERT into payment values('"+maxbudget.Text+"','"+Session["user"].ToString()+"','"+rmpid+"')",cn.con);
                int res = cc.ExecuteNonQuery();
                if (res > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Project is Posted & Payment is Paid....');window.location.href='index.aspx';", true);
                }
                else
                {

                }
            }

        
    }
}