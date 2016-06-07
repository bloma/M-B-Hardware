using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class NewOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String orderDate =txtItemName.Text;
        String description =txtDescription.Text;

        OrderDTO orders = new OrderDTO();
        orders.orderDate = orderDate;
        orders.description = description;

        //SqlConnection con = new SqlConnection();
        String strConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        //SqlCommand cmd = new SqlCommand("ADD_CUSTOMER", con);

        using (SqlConnection con = new SqlConnection(strConString))
        {
            using (SqlCommand cmd = new SqlCommand("ADD_ORDER", con))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@O_DATE", orders.orderDate);
                cmd.Parameters.AddWithValue("@O_DESCRIPTION", orders.description);
                //cmd.Parameters.AddWithValue("@C_EMAIL", customer.CustomerEmail);
                //cmd.Parameters.AddWithValue("@C_PHONE", customer.CustomerPhoneNumber);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        txtDescription.Text = "";
        txtItemName.Text = "";
        txtIssue.Text = "";
        
    }
}