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

public partial class myprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\niran\Documents\Visual Studio 2015\WebSites\don\App_Data\Database.mdf; Integrated Security = True");
    string str;
    byte up;


    protected void Page_Load(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand(str, con);
        DataTable dt = new DataTable();

        lblusername.Text = "<b><font color=Brown>" + "WELLCOME:: " + "</font>" + "<b><font color=red>" + Session["UserName"] + "</font>";
        con.Open();

        str = "select * from donor_info where username='" + Session["username"] + "'";
        cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string fn, mn, ln;
            fn = dt.Rows[0]["fname"].ToString();
            mn = dt.Rows[0]["mname"].ToString();
            ln = dt.Rows[0]["lname"].ToString();
            string full = fn +' '+ mn +' '+ ln;
            lblname.Text = full;
            lbladdress.Text = dt.Rows[0]["address"].ToString();
            lblstate.Text = dt.Rows[0]["state"].ToString();
            lblcity.Text = dt.Rows[0]["city"].ToString();
            lblzipcode.Text = dt.Rows[0]["zipcode"].ToString();
            lblage.Text = dt.Rows[0]["age"].ToString();
            lblbloodgroup.Text = dt.Rows[0]["bloodg"].ToString();
            lblgender.Text = dt.Rows[0]["gender"].ToString();
            lblemail.Text = dt.Rows[0]["email"].ToString();
            lblmobile.Text = dt.Rows[0]["mobile"].ToString();
            lblfirstdate.Text = dt.Rows[0]["firstdate"].ToString();
            lbllastdate.Text = dt.Rows[0]["lastdate"].ToString();
        }
        con.Close();
        //taking date from database and converting date
        DataTable dat1 = new DataTable();

       String str1 = "select firstdate from donor_info where username='" + Session["username"] + "'";

        SqlCommand cmd1 = new SqlCommand(str1, con);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);

        da1.Fill(dat1);

        lbldays.Text = dat1.Rows[0]["firstdate"].ToString();

        DateTime dt1 = DateTime.Now;
        DateTime dt2 = DateTime.Parse(lbldays.Text);


        TimeSpan ts = dt1 - dt2;

        int days = ts.Days;
        lbldays.Text = days.ToString();

        DateTime dt3 = dt2.AddDays(9);
        //lblndate.Text = dt3.ToString();

        //SqlCommand newdate = new SqlCommand("insert into donor_info ((ndate) values (@ndate)) where username='" + Session["username"]+"'", con);

        //newdate.Parameters.AddWithValue("@ndate",dt3.ToShortDateString());

        //con.Open();
        //int i = newdate.ExecuteNonQuery();
        //con.Close();
        
        //if (days == 9)
        //{
        //    up = 1;
        //}
        //if (up == 1)
        //{
        //    con.Open();


        //    //email setup
        //    dt = new DataTable();
        //    str = "select * from donor_info where UserName='" + Session["UserName"] + "'";

        //    SqlCommand cmd2 = new SqlCommand(str, con);
        //    da = new SqlDataAdapter(cmd2);

        //    da.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        lblemail.Text = dt.Rows[0]["email"].ToString();

        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.Port = 587;
        //        smtp.Credentials = new System.Net.NetworkCredential("blooddonars4u@gmail.com", "blooddonaru");
        //        smtp.EnableSsl = true;
        //        MailMessage msg = new MailMessage();
        //        msg.Body = "your are now eligible to donate blood ";
        //        string toaddress = lblemail.Text;
        //        msg.To.Add(toaddress);
        //        string fromaddress = "Blood Doanrs <blooddonars4u@gmail.com>";
        //        msg.From = new MailAddress(fromaddress);
        //        try
        //        {
        //            smtp.Send(msg);
        //        }
        //        catch
        //        {
        //            throw;
        //        }
        //    }
        //    con.Close();
        //}
    }
}