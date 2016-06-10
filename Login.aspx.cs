using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
public partial class Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsername.Visible = false;
        lblPassword.Visible = false;
        lblMainError.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblUsername.Visible = false;
        lblPassword.Visible = false;
        lblMainError.Visible = false;

        if (txtPassword.Text != "" && txtUsername.Text != "")
        {
            if (AuthenticateUser(txtUsername.Text, txtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, CheckBox1.Checked);
            }
            else
            {
                lblMainError.Visible = true;
                lblMainError.Text = "Invalid User Name and /or Password";
            }
        }
        else if(txtPassword.Text == "" && txtUsername.Text == "")
        {
            lblUsername.Visible = true;
            lblUsername.Text = "User Name Required";
            lblPassword.Visible = true;
            lblPassword.Text = "Password Required";
        }
        else if (txtPassword.Text == "")
        {
            lblPassword.Visible = true;
            lblPassword.Text = "Password Required";
            
        }else if (txtUsername.Text == "")
        {
            lblUsername.Visible = true;
            lblUsername.Text = "User Name Required";
        }
        
    }

    private bool AuthenticateUser(string username, string password)
    {
        using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\M-B-HARDWARE.mdf;Integrated Security=True"))
        {
            SqlCommand cmd = new SqlCommand("userAuthenticate", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramUsername = new SqlParameter("@username", username);
            SqlParameter paramPassword = new SqlParameter("@password", password);

            cmd.Parameters.Add(paramUsername);
            cmd.Parameters.Add(paramPassword);

            conn.Open();

            int ReturnCode = (int)cmd.ExecuteScalar();

            return ReturnCode == 1;
        }        
    }
}