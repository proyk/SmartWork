using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for connection
/// </summary>
public class connection
{
    public SqlConnection con;
	public connection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void conn()
    {

        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\19-02-2020\freelance\App_Data\freelancer.mdf;Integrated Security=True;Max Pool Size=2000");
       
        con.Open();
    }
}