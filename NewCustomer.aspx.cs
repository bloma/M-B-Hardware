using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class NewCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Button1_Click(sender, e);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String name = txtName.Text;
        String surname = txtSirName.Text;
        String email = txtEmail.Text;
        String phone = txtPhone.Text;

        CustomerDTO customer = new CustomerDTO();
        customer.CustomerFirstName = name;
        customer.CustomerLastName = surname;
        customer.CustomerPhoneNumber = phone;
        customer.CustomerEmail = email;


        //SqlConnection con = new SqlConnection();
        String strConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        //SqlCommand cmd = new SqlCommand("ADD_CUSTOMER", con);

        using (SqlConnection con = new SqlConnection(strConString))
        {
            using (SqlCommand cmd = new SqlCommand("ADD_CUSTOMER", con))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@C_FIRSTNAME", customer.CustomerFirstName);
                cmd.Parameters.AddWithValue("@C_LASTNAME", customer.CustomerLastName);
                cmd.Parameters.AddWithValue("@C_EMAIL", customer.CustomerEmail);
                cmd.Parameters.AddWithValue("@C_PHONE", customer.CustomerPhoneNumber);



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


            }
        }

        txtName.Text = "";
        txtSirName.Text = "";
        txtPhone.Text = "";
        txtEmail.Text="";

    }
}