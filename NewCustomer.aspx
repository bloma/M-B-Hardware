<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewCustomer.aspx.cs" Inherits="NewCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BreadCrumb" runat="Server">
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">New Customers
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-home"></i><a href="Default.aspx"> Home</a>
                </li>
                <li>
                    <i class="fa fa-users"></i><a href="Customer.aspx"> Customer</a>
                </li>
                <li class="active">
                    <i class="fa fa-user"></i> Add Customer
                </li>
            </ol>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <div class="col-lg-3">
            </div>
        <div class="col-lg-6">
            <div class="panel panel-default panel-green">
                <div class="panel-heading">Customer Details</div>
  <div class="panel-body">
    <div class="form-group">
                <label>Name</label>
                <input class="form-control" />
                <p class="help-block">Example block-level help text here.</p>
            </div>
            <div class="form-group">
                <label>Sirname</label>
                <input class="form-control" />
                <p class="help-block">Example block-level help text here.</p>
            </div>
            <div class="form-group">
                <label>Date of birth</label>
                <input class="form-control" />
                <p class="help-block">Example block-level help text here.</p>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input class="form-control" />
                <p class="help-block">Example block-level help text here.</p>
            </div>
            <div class="form-group">
                <label>Phone</label>
                <input class="form-control" />
                <p class="help-block">Example block-level help text here.</p>
            </div>
  </div>
  <div class="panel-footer"><button type="button" class="btn btn-primary btn-lg btn-block">Submit</button></div>
</div>

            
        </div>
    </div>
</asp:Content>

