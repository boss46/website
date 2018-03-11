using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class datesfirst : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DateTime dt2 = Convert.ToDateTime(txtdate.Text);

        DateTime dt3 = dt2.AddDays(9);

        txtlastdate.Text = dt3.ToString();



    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\niran\Documents\Visual Studio 2015\WebSites\don\App_Data\Database.mdf; Integrated Security = True");

        SqlCommand cmd = new SqlCommand("insert into dates (firstdate,lastdate) values (@firstdate,@lastdate)", con);

        cmd.Parameters.AddWithValue("@firstdate", txtdate.Text);
        cmd.Parameters.AddWithValue("@lastdate", txtlastdate.Text);


        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
    }
}