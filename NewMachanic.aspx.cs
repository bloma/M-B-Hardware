using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class NewMachanic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Button1_Click(sender, e);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String name =txtName.Text;
        String surname =txtSirName.Text;
        String email =txtEmail.Text;
        String phone = txtPhone.Text;

        MechanicDTO mechanic = new MechanicDTO();

        mechanic.mechanicFirstName = name;
        mechanic.mechanicLastName = surname;
        mechanic.mechanicPhoneNumber = phone;
        mechanic.mechanicEmail = email;

        String strConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        using (SqlConnection con = new SqlConnection(strConString))
        {
            using(SqlCommand cmd = new SqlCommand("ADD_MECHANIC", con))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@M_FIRSTNAME", mechanic.mechanicFirstName);
                cmd.Parameters.AddWithValue("@M_LASTNAME", mechanic.mechanicLastName);
                cmd.Parameters.AddWithValue("@M_EMAIL", mechanic.mechanicEmail);
                cmd.Parameters.AddWithValue("@M_PHONE", mechanic.mechanicPhoneNumber);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

        }

        txtName.Text = "";
        txtSirName.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";

        //SqlConnection con = new SqlConnection();
        //con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["connection "].ConnectionString.ToString();

        
       // SqlCommand cmd = new SqlCommand("ADD_MECHANIC",con);
        //cmd.CommandType = System.Data.CommandType.StoredProcedure;

        //cmd.Parameters.AddWithValue("@M_FIRSTNAME", mechanic.mechanicFirstName);
        //cmd.Parameters.AddWithValue("@M_LASTNAME", mechanic.mechanicLastName);
        //cmd.Parameters.AddWithValue("@M_EMAIL", mechanic.mechanicEmail);
        //cmd.Parameters.AddWithValue("@M_PHONE", mechanic.mechanicPhoneNumber);

        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();
       
    }
}