<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BreadCrumb" Runat="Server">
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Orders
                           
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-home"></i><a href="Default.aspx"> Home</a>
                </li>
                <li class="active">
                    <i class="fa fa-shopping-cart"></i> Oders
                </li>
            </ol>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">New Order</h3>
                        </div>
                        <div class="panel-body">
                             <asp:Button ID="Button1" runat="server" Text="Create Order" CssClass="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                        </div>
                    </div>
        </div>
        <div class="col-lg-8">
              <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-money fa-fw"></i>Transactions Panel</h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="orderID" DataSourceID="SqlOrders" Width="519px">
                                    <Columns>
                                        <asp:BoundField DataField="orderID" HeaderText="orderID" InsertVisible="False" ReadOnly="True" SortExpression="orderID" />
                                        <asp:BoundField DataField="orderDate" HeaderText="orderDate" SortExpression="orderDate" />
                                    </Columns>
                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlOrders" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders]"></asp:SqlDataSource>
                                </table> 
                                
                            </div>
                            
                        </div>
                    </div>
        </div>
    </div>
</asp:Content>

