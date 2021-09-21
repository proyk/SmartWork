using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;



public partial class testbid : System.Web.UI.Page
{
    string pidd = "";
    connection cn;
    string email;
    string p_idd;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new connection();
        if (Session["user"] != null)
        {
            cn.conn();


            if (!IsPostBack)
            {

                //datafetch2();
            }
            userss();

        }
        else
        {
            Response.Redirect("SignIN_SignUp.aspx");
        }

    }
    public void datafetch()
    {


        SqlCommand cmd = new SqlCommand("SELECT bid.b_id, bid.budget,bid.bid_desc,bid.work_day,bid.bid_user ,postprojectt.project_name,postprojectt.user_name,bid.p_id FROM bid INNER JOIN postprojectt ON bid.p_id=postprojectt.pid where postprojectt.project_name='" + usr.InnerText + "'", cn.con);


        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);
        rept.DataSource = dt;
        rept.DataBind();

    }
    public void userss()
    {
        SqlCommand cmd = new SqlCommand("select * from postprojectt where user_name in('" + Session["user"].ToString() + "') and project_status='posted' or project_status='bidded'", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        chatlist.DataSource = dt;
        chatlist.DataBind();

    }

    protected void grdvshow_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        // grdvshoww.PageIndex = e.NewPageIndex;
        datafetch();
    }
    /* public void datafetch2()
     {
         connection cn = new connection();
         cn.conn();
         SqlCommand cmd = new SqlCommand("select * from postprojectt", cn.con);
         SqlDataAdapter da = new SqlDataAdapter(cmd);
         DataTable dt = new DataTable();

         da.Fill(dt);
         grdvshoww.DataSource = dt;
         grdvshoww.DataBind();
     }*/
    protected void LinkButton1_Click(object sender, EventArgs e)
    {


    }
    protected void chatlist_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        usr.InnerText = e.CommandArgument.ToString();
        datafetch();
    }
    public int cnt(string i)
    {
        int ct = 0;

        SqlCommand cmd = new SqlCommand("select * from bid where p_id=" + i + "", cn.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ct = dt.Rows.Count;
        pidd = i;
        return ct;
    }

    protected void grdvshoww_RowEditing(object sender, GridViewEditEventArgs e)
    {

        /*  MailMessage mail = new MailMessage();
          mail.Sender = new MailAddress("testingnikkoma@gmail.com");

          mail.From = new MailAddress("testingnikkoma@gmail.com");
          mail.To.Add("jikadramehul22@gmail.com");
          mail.Subject = "Email using Gmail";

          string Body = "hello this is testing messaage";

          mail.Body = Body;

          mail.IsBodyHtml = true;
          SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);


          smtp.Credentials = new System.Net.NetworkCredential("testingnikkoma@gmail.com", "mypass.com");
          smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
          //Or your Smtp Email ID and Password

          smtp.EnableSsl = true;
          smtp.Timeout = 30000;
          //smtp.UseDefaultCredentials = true;
          smtp.Send(mail);

              /*  MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add("kaliyanihardik007@gmail.com");
                mailMessage.From = new MailAddress("sender@gmail.com");
                mailMessage.Subject = "ASP.NET e-mail test";
                mailMessage.Body = "Hello world,\n\nThis is an ASP.NET test e-mail!";
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com",587);
                smtpClient.Send(mailMessage);
                smtpClient.UseDefaultCredentials = true;
                Response.Write("E-mail sent!");
          */




    }

    protected void mail_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('"+pd.Value+"');</script>");

        MailMessage mail = new MailMessage();
        mail.Sender = new MailAddress("smartworker812@gmail.com");


        mail.From = new MailAddress("smartworker812@gmail.com");
        mail.To.Add(delta.Text);
        mail.Subject = sub.Text;


        mail.Body = m_body.Text;

        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);


        smtp.Credentials = new System.Net.NetworkCredential("smartworker812@gmail.com", "smart@812");
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        //Or your Smtp Email ID and Password

        smtp.EnableSsl = true;
        smtp.Timeout = 30000;

        smtp.Send(mail);
        int bb = int.Parse(bd.Text);
      
        SqlCommand cup = new SqlCommand("update bid set bid_status='rejected' where p_id=" + pd.Value + " ", cn.con);
        int c = cup.ExecuteNonQuery();
        if (c > 0)
        {
            SqlCommand ccd = new SqlCommand("update bid set bid_status='accepted' where b_id=" + bd.Text + " ", cn.con);
            int i = ccd.ExecuteNonQuery();
            if (i > 0)
            {
                SqlCommand pup = new SqlCommand("update postprojectt set project_status='ordered' where pid=" + pd.Value + "", cn.con);
                int m = pup.ExecuteNonQuery();
                if (m > 0)
                {
                    SqlCommand upwork = new SqlCommand("insert into order_work(pid,bid,startdate,ow_status) values(" + pd.Value + "," +bb + ",GETDATE(),'working')", cn.con);
                    upwork.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Mail Sent....');window.location.href='postedproject.aspx';", true);
                }
            }
        }
        //SqlCommand cm=new SqlCommand("update bid set bid_status='accepted' where ")
    }

    protected void ShowPopup(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)(sender);
        String bid = btn.CommandArgument;
        string tmp = "";
        bd.Text = bid;
        SqlCommand cmd = new SqlCommand("SELECT users.email,bid.p_id FROM bid INNER JOIN users ON bid.bid_user=users.username where b_id=" + bid + "", cn.con);
        SqlDataReader sdr = cmd.ExecuteReader();

        while (sdr.Read())
        {
            tmp = sdr["email"].ToString();
            p_idd = sdr["p_id"].ToString();
        }
        pd.Value = p_idd;
        delta.Text = tmp;
        string title = "Send Mail";

        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "');", true);




    }

}