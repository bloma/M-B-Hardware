<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MachanicDetails.aspx.cs" Inherits="MachanicDetails" %>

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
                    <i class="fa fa-user"></i> Machanics Details
                </li>
            </ol>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-default panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">Mechanic Profile</h3>
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
        </div>
        <div class="col-lg-8">
             <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i>Tasks Panel</h3>
                        </div>
                        <div class="panel-body">
                            <div class="list-group">
                                
                                <a href="#" class="list-group-item">
                                    <span class="badge">2 hours ago</span>
                                    <i class="fa fa-fw fa-check"></i>Completed task: "fixed item 3423"
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">yesterday</span>
                                    <i class="fa fa-fw fa-globe"></i>Saved the world
                                </a>
                                <a href="#" class="list-group-item">
                                    <span class="badge">two days ago</span>
                                    <i class="fa fa-fw fa-check"></i>Completed task: "fix error on sales page"
                                </a>
                            </div>
                            
                            <%--<div class="text-right">
                                <a href="#">View All Activity <i class="fa fa-arrow-circle-right"></i></a>
                            </div>--%>
                        </div>
                    </div>
            <asp:Button ID="Button1" runat="server" Text="Add New Task" CssClass="btn btn-primary btn-lg btn-block"/>
        </div>
    </div>
</asp:Content>

