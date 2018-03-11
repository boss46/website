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


public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\niran\Documents\Visual Studio 2015\WebSites\don\App_Data\Database.mdf; Integrated Security = True");

    protected void Page_Load(object sender, EventArgs e)
    {
    }
    byte up;
    string str = null , str1;
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com;
        str = "select * from donor_info ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            if (txtpassword.Text == reader["password"].ToString())
            {
                up = 1;
            }
        }
        reader.Close();
        con.Close();
        if (up == 1)
        {
            con.Open();
           str = "update donor_info set password=@password where username ='" + Session["username"].ToString() + "'";
            com = new SqlCommand(str, con);
            com.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar, 50));
            com.Parameters["@password"].Value = txtnpassword.Text;
            com.ExecuteNonQuery();
            con.Close();
            lbl_msg.Text = "Password changed Successfully";

            //email setup
            DataTable dt = new DataTable();

            str = "select * from donor_info where UserName='" + Session["UserName"] + "'";
           SqlCommand cmd1 = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                lblemail.Text = dt.Rows[0]["email"].ToString();
                str1 = "select email where username = '" + Session["username"].ToString() + "'";

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("blooddonars4u@gmail.com", "blooddonaru");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                // msg.Subject = "Hello " + txtmname.Text;
                msg.Body = "your password has been changed";
                string toaddress = lblemail.Text;
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
            lbl_msg.Text = "Please enter correct Current password";
        }
    }
}
