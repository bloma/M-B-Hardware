<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BreadCrumb" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Customers
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-home"></i><a href="Default.aspx"> Home</a>
                </li>
                <li class="active">
                    <i class="fa fa-users"></i> Customer
                </li>
            </ol>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-plus-circle fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">Add New Customer!</div>

                        </div>
                    </div>
                </div>
                <a href="NewCustomer.aspx">
                    <div class="panel-footer">
                        <span class="pull-left">Add Now</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-up"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-8">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-money fa-fw"></i>Full List</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover table-striped">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerID" DataSourceID="SqlCustomers" Width="497px">
                            <Columns>
                                <asp:BoundField DataField="customerID" HeaderText="customerID" InsertVisible="False" ReadOnly="True" SortExpression="customerID" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customers]"></asp:SqlDataSource>
                        </table>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


