<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewOrder.aspx.cs" Inherits="NewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BreadCrumb" Runat="Server">
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">New Order
                           
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-home"></i><a href="Default.aspx"> Home</a>
                </li>
                <li>
                    <i class="fa fa-shopping-cart"></i><a href="Orders.aspx"> Orders</a>
                </li>
                <li class="active">
                    <i class="fa fa-shopping-cart"></i> New Order
                </li>
            </ol>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <div class="col-lg-3">
            </div>
        <div class="col-lg-6">
            <div class="panel panel-default panel-green">
                <div class="panel-heading">&nbsp;Details</div>
  <div class="panel-body">
        <div class="form-group">
        
<<<<<<< HEAD
        Customer Name <asp:DropDownList ID="CustNameList" runat="server" CssClass="form-control" Height="46px" Width="192px" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="LastName">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList> 
           
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName] FROM [customers]"></asp:SqlDataSource>
=======
        Customer Name <asp:DropDownList ID="CustNameList" runat="server" CssClass="form-control selectpicker" Height="22px" Width="89px"></asp:DropDownList> 
>>>>>>> eba782c34df014aa671920dc8fc5bdb185d8353b
           
             </div>
      <div class="form-group">
          Item Name  <asp:TextBox ID="txtItemName" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
      <div class="form-group">
          Issue  <asp:TextBox ID="txtIssue" runat="server" CssClass="form-control"></asp:TextBox>
      </div>
      <div class="form-group">
          Description <asp:TextBox ID="txtDescription" runat="server" Rows="10" CssClass="form-control" TextMode="MultiLine" Width="429px"></asp:TextBox>
          </div>

  </div>
  <div class="panel-footer">
      <asp:Button ID="Button1" runat="server" Text="Procsess Order" CssClass="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
  </div>
</div>

            
        </div>
    </div>

   
</asp:Content>

