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

public partial class registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\niran\Documents\Visual Studio 2015\WebSites\don\App_Data\Database.mdf; Integrated Security = True");


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("~/home.aspx"); //redirect to main page
        }
    }
    //protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    //{
    //    args.IsValid = chkrules.Checked;
    //}
    protected void getdate(object sender, EventArgs e)
    {
        DateTime dt2 = Convert.ToDateTime(txtdate.Text);

        DateTime dt3 = dt2.AddDays(9);

        txtlastdate.Text = dt3.ToString();
        
    }

    protected void btnlink_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into donor_info (username,password,fname,mname,lname,address,state,city,zipcode,age,bloodg,gender,email,mobile,firstdate,lastdate) values (@username,@password,@fname,@mname,@lname,@address,@state,@city,@zipcode,@age,@bloodg,@gender,@email,@mobile,@firstdate,@lastdate)", con);

        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);
        cmd.Parameters.AddWithValue("@fname", txtfname.Text);
        cmd.Parameters.AddWithValue("@mname", txtmname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlname.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@state", txtstate.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@zipcode", txtzipcode.Text);
        cmd.Parameters.AddWithValue("@age", txtage.Text);
        cmd.Parameters.AddWithValue("@bloodg", ddlbloodg.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtphone.Text);
        cmd.Parameters.AddWithValue("@firstdate", txtdate.Text);
        cmd.Parameters.AddWithValue("@lastdate", txtlastdate.Text);


        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("blooddonars4u@gmail.com", "blooddonaru");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Hello " + txtmname.Text;
        msg.Body = "Hi, these is sended through vs15";
        string toaddress = txtemail.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Blood Doanrs <blooddonars4u@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        //    Label1.Text = "Your Email Has Been Registered with Us";
            txtmname.Text = "";
            txtemail.Text = "";

        }
        catch(Exception s)
        {
            
        }
        Response.Write("<script type=\"text/javascript\">alert('your are registered as donar ');</script>");
        Response.Redirect("home.aspx");
    }

}