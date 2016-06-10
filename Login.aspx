<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Bootstrap Core CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Styles/loginStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="login-container">
            <div class="row">
                <div class="container">
                    <div class="row">

                        <div class="col-md-offset-5 col-md-3">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Login</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-lg-12">
                                            Username
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control " placeholder="Username"></asp:TextBox>
                                            <asp:Label ID="lblUsername" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>

                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-4 col-lg-12">
                                            Password 
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                            <asp:Label ID="lblPassword" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                     <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                                    
                                    <br />
                                    <asp:CheckBox ID="CheckBox1" Text=" Remember Me" runat="server" />
                                        
                                     <br />
                                    <asp:Label ID="lblMainError" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </form>


    <script src="Scripts/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/myscripts.js"></script>
    <script src="Scripts/bootstrap-select.min.js"></script>

</body>
</html>
