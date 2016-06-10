<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Header.aspx.cs" Inherits="Header" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" Runat="Server">
     <!-- Navigation -->
                <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx">MnB HRS</a>
                    </div>
                    <!-- Top Menu Items -->
                    <ul class="nav navbar-right top-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><b class="caret"></b></a>
                            <ul class="dropdown-menu message-dropdown">
                                <li class="message-preview">
                                    <a href="#">
                                        <div class="media">
                                            <span class="pull-left">
                                                <img class="media-object" src="http://placehold.it/50x50" alt="" />
                                            </span>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <strong>John Smith</strong>
                                                </h5>
                                                <p class="small text-muted"><i class="fa fa-clock-o"></i>Yesterday at 4:32 PM</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="message-preview">
                                    <a href="#">
                                        <div class="media">
                                            <span class="pull-left">
                                                <img class="media-object" src="http://placehold.it/50x50" alt="" />
                                            </span>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <strong>John Smith</strong>
                                                </h5>
                                                <p class="small text-muted"><i class="fa fa-clock-o"></i>Yesterday at 4:32 PM</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="message-preview">
                                    <a href="#">
                                        <div class="media">
                                            <span class="pull-left">
                                                <img class="media-object" src="http://placehold.it/50x50" alt="" />
                                            </span>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <strong>John Smith</strong>
                                                </h5>
                                                <p class="small text-muted"><i class="fa fa-clock-o"></i>Yesterday at 4:32 PM</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="message-footer">
                                    <a href="#">Read All New Messages</a>
                                </li>
                            </ul>
                        </li>
                        <%--<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-tasks"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu task-dropdown">
                        <li>
                            <a href="#">Calender updated <span class="label label-default">just now</span></a>
                        </li>
                        <li>
                            <a href="#">Finished Item 243 <span class="label label-primary">4 minutes ago</span></a>
                        </li>
                        <li>
                            <a href="#">Invoice 543 has been paid <span class="label label-success">23 minutes ago</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>John Smith <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#"><i class="fa fa-fw fa-user"></i>Profile</a>
                                </li>
                                <%--<li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>--%>
                                <li>
                                    <a href="#"><i class="fa fa-fw fa-gear"></i>Settings</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#"><i class="fa fa-fw fa-power-off"></i>Log Out</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav side-nav">
                            <li>
                                <a href="Default.aspx"><i class="fa fa-fw fa-home"></i>Home</a>
                            </li>
                            <li>
                                <a href="Orders.aspx"><i class="fa fa-fw fa-shopping-cart"></i>Orders</a>
                            </li>
                            <li>
                                <a href="Repairs.aspx"><i class="fa fa-fw fa-wrench"></i>Repairs</a>
                            </li>
                            <li>
                                <a href="Customers.aspx"><i class="fa fa-fw fa-users"></i>Customers</a>
                            </li>
                            <li>
                                <a href="Mechanics.aspx"><i class="fa fa-fw fa-user"></i>Machanics</a>
                            </li>
                            <li>
                                <a href="Reports.aspx"><i class="fa fa-fw fa-bar-chart-o"></i>Reports</a>
                            </li>
                            <li>
                                <a href="About.aspx"><i class="fa fa-fw fa-file"></i>About</a>
                            </li>
                            <%--<li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                        </ul>
                    </li>--%>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
</asp:Content>


