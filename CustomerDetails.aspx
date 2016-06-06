<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerDetails.aspx.cs" Inherits="CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BreadCrumb" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Ayanda Patos
                           
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-home"></i><a href="Default.aspx">Home</a>
                </li>
                <li>
                    <i class="fa fa-users"></i><a href="Customers.aspx">Customers</a>
                </li>
                <li class="active">
                    <i class="fa fa-user"></i>Customer Details
                </li>
            </ol>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <div class="col-lg-4">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Customer Details</h3>
                        </div>
                        <div class="panel-body">
                            <div class="list-group ">
                                <a href="javascript:slideonlyone('Profile');" runat="server" id="profile" class="list-group-item">
                                    
                                    Profile</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Billing Status</h3>
                        </div>
                        <div class="panel-body">
                            <div class="list-group ">
                                <a href="javascript:slideonlyone('Paid');" class="list-group-item">
                                    <span class="badge">3</span>
                                    Paid</a>
                                <a href="javascript:slideonlyone('Unpaid');" class="list-group-item">
                                    <span class="badge">1</span>
                                    Unpaid</a>
                                <a href="javascript:slideonlyone('Cancelled');" class="list-group-item">
                                    <span class="badge">0</span>
                                    Cancelled</a>
                               
                                <a href="javascript:slideonlyone('Refunds');" class="list-group-item">
                                    <span class="badge">0</span>
                                    Refunded</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <div class="col-lg-8">
           
            
                    <div id="Profile" class="panel panel-default newboxes panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">Customer Profile</h3>
                        </div>
                        <div class="panel-body">
                            <h4>Fullname
                                <asp:CheckBox ID="cbxFulName" runat="server"/>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                            </h4>
                            <h4>Age
                                <asp:CheckBox ID="cbxAge" runat="server" />
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                            </h4>
                            <h4>Phone&nbsp;<asp:CheckBox ID="cbxPhone" runat="server" />
                            &nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                            </h4>
                            <h4>Email
                                <asp:CheckBox ID="cbxEmail" runat="server" />
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                            </h4>
                            <h4>Address
                                <asp:CheckBox ID="cbxAddress" runat="server" />
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                            </h4>
                        </div>
                    </div>
                


            <div id="Paid" class="panel panel-default newboxes panel-green" style=" display: none;">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Paid Invoices</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>Invoice #</th>
                                    <th>Invoice Date</th>
                                    <th>Due Date</th>
                                    <th>Amount (R)</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>3326</td>
                                    <td>10/21/2013</td>
                                    <td>3:29 PM</td>
                                    <td>R321.33</td>
                                    <td><span class="label label-success">Paid</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div id="Unpaid" class="panel panel-default newboxes panel-red" style=" display: none;">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> UnPaid Invoices</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>Invoice #</th>
                                    <th>Invoice Date</th>
                                    <th>Due Date</th>
                                    <th>Amount (R)</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>3319</td>
                                    <td>10/21/2013</td>
                                    <td>2:13 PM</td>
                                    <td>$943.45</td>
                                    <td><span class="label label-danger">Upaid</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

             <div id="Cancelled" class="panel panel-default newboxes panel-red" style=" display: none;">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Cancelled Invoices</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>Invoice #</th>
                                    <th>Invoice Date</th>
                                    <th>Due Date</th>
                                    <th>Amount (R)</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>3319</td>
                                    <td>10/21/2013</td>
                                    <td>2:13 PM</td>
                                    <td>R943.45</td>
                                    <td><span class="label label-danger">Cancelled</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


             <div id="Refunds" class="panel panel-default newboxes panel-success" style=" display: none;">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Refunded Invoices</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>Invoice #</th>
                                    <th>Invoice Date</th>
                                    <th>Due Date</th>
                                    <th>Amount (R)</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>3326</td>
                                    <td>10/21/2013</td>
                                    <td>3:29 PM</td>
                                    <td>R321.33</td>
                                    <td><span class="label label-success">Refunded</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
          
        </div>
    </div>

    <script type="text/javascript">
function toggleDiv(divId) {
   $("#"+divId).toggle();
}

function slideonlyone(thechosenone) {
    $('.newboxes').each(function (index) {
        if ($(this).attr("id") == thechosenone) {
            $(this).show(200);
        }
        else {
            $(this).hide(100);
        }
    });
}
</script>
</asp:Content>

