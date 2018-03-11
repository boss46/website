using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("blooddonars4u@gmail.com", "blooddonaru");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "FEEDBACK";
        msg.Body = "Sender Name ' " + txtname.Text + " ' " + "and email ' " + txtemail.Text + " ' " +"MESSAGE'" + txtfeedback.Text + " ' "; ;
        string toaddress = "Blood Donars <blooddonars4u@gmail.com>";
        msg.To.Add(toaddress);
        string fromaddress = "Blood Donars <blooddonars4u@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        }
        catch (Exception s)
        {

        }
        Response.Write("<script type=\"text/javascript\">alert('thankyou for feedback ');</script>");
        Response.Redirect("home.aspx");

    }
}