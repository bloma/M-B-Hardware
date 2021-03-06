﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Mechanics.aspx.cs" Inherits="Mechanics" %>


<asp:Content ID="Content1" ContentPlaceHolderID="BreadCrumb" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Mechanics
                            
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-home"></i><a href="Default.aspx"> Home</a>
                </li>
                <li class="active">
                    <i class="fa fa-user"></i> Machanics
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
                            <div class="huge">Add New Machanic!</div>

                        </div>
                    </div>
                </div>
                <a href="NewMachanic.aspx">
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
                        
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="mechanicID" DataSourceID="SqlMechanic" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-bordered table-hover table-striped" ForeColor="Black" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="mechanicID" HeaderText="mechanicID" InsertVisible="False" ReadOnly="True" SortExpression="mechanicID" />
                                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlMechanic" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [mechanic]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


