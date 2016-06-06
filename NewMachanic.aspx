<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewMachanic.aspx.cs" Inherits="NewMachanic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BreadCrumb" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Mechanics
                            
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-home"></i><a href="Default.aspx"> Home</a>
                </li>
                <li>
                    <i class="fa fa-users"></i> <a href="Mechanics.aspx"> Machanics</a>
                </li>
                <li class="active">
                    <i class="fa fa-user"></i> New Machanics
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
                <div class="panel-heading">Machanic Details</div>
  <div class="panel-body">
        <div class="form-group">

        Name   <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
      <div class="form-group">
        Sirname  <asp:TextBox ID="txtSirName" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
      <div class="form-group">
        Email  <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
      </div>
      <div class="form-group">
        Phone <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
          </div>

  </div>
  <div class="panel-footer">
      <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
  </div>
</div>

            
        </div>
    </div>
</asp:Content>

