using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        //count = dv.Count;
        //countCust.Text = ""+count;

    }

    protected void SqlDataSource_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        
    }

   
}
