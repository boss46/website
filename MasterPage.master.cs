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

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(@"Data source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\niran\Documents\Visual Studio 2015\WebSites\don\App_Data\Database.mdf; Integrated Security = True");
    byte up;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select  * from donor_info where username=@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("password", txtpassword.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();

        if (dt.Rows.Count > 0)
        {
            Session["username"] = txtusername.Text;
            Response.Redirect("home.aspx");
        }
        else
        {
            Label1.Text = "You're username and password is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
    }
    protected void btnForgot_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\niran\Documents\Visual Studio 2015\WebSites\don\App_Data\Database.mdf; Integrated Security = True");
        string str = null;

        con.Open();
        SqlCommand com;
        str = "select * from donor_info";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            if (txtusername.Text == reader["username"].ToString())
            {
                up = 1;
            }
        }
        reader.Close();
        con.Close();
        if (up == 1)
        {
            con.Open();


            //email setup
            DataTable dt = new DataTable();

            str = "select * from donor_info where UserName='" + txtusername.Text + "'";
            SqlCommand cmd1 = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                lblmousername.Text = dt.Rows[0]["username"].ToString();
                lblmoname.Text = dt.Rows[0]["mname"].ToString();
                lblmoemail.Text = dt.Rows[0]["email"].ToString();
                lblmopassword.Text = dt.Rows[0]["password"].ToString();

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("blooddonars4u@gmail.com", "blooddonaru");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Body = "your username ' " + lblmousername.Text + " ' " + "your password ' " + lblmopassword.Text + " ' ";
                string toaddress = lblmoemail.Text;
                msg.To.Add(toaddress);
                string fromaddress = "Blood Doanrs <blooddonars4u@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);
                }
                catch
                {
                    throw;
                }
            }
        }
        else
        {
            lblmessage.Text = "Please enter correct Username";
        }
        con.Close();

    }
    protected void btnlogout_click(object sender, EventArgs e)
    {

        Session.RemoveAll();

        Response.Redirect("home.aspx");
    }
}
