using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using System.Web.Script.Services;
public partial class CS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            connection cn = new connection();
            cn.conn();
            using (cn.con)
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Users"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        DataTable dt = new DataTable();
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = cn.con;
                        sda.SelectCommand = cmd;
                        sda.Fill(dt);
                        gvUsers.DataSource = dt;
                        gvUsers.DataBind();
                    }
                }
            }
        }
    }

    [WebMethod]
    [ScriptMethod]
    public static void SaveUser(User user)
    {
       connection cn = new connection();
            cn.conn();
            using (cn.con)
            {
                
            using (SqlCommand cmd = new SqlCommand("INSERT INTO users VALUES(@username, @password,@email)"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@username", user.Username);
                cmd.Parameters.AddWithValue("@password", user.Password);
                cmd.Parameters.AddWithValue("@email", user.Mail);
                cmd.Connection = cn.con;
                //cn.con.Open();
                cmd.ExecuteNonQuery();
                cn.con.Close();
            }
        }
    }
}
public class User
{
    public string Username { get; set; }
    public string Password { get; set; }
    public string Mail { get; set; }
}
