using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;

public partial class NewCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1_Click(sender, e);
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

        


    }
}