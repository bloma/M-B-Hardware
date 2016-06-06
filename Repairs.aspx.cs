using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Repairs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 0;
    }

    protected void Repaired_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 1;
    }

    protected void InProgress_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 2;
    }

    protected void WaitingList_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 3;
    }

    protected void BeyondRepair_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 4;
    }
}