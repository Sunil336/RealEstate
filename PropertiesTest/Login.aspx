<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PropertiesTest.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Angle - Bootstrap Admin Template</title>
    <!-- =============== VENDOR STYLES ===============-->
    <!-- FONT AWESOME-->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css" />
    <!-- SIMPLE LINE ICONS-->
    <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css" />
    <!-- =============== BOOTSTRAP STYLES ===============-->
    <link rel="stylesheet" href="css/bootstrap.css" id="bscss" />
    <!-- =============== APP STYLES ===============-->
    <link rel="stylesheet" href="css/app.css" id="maincss" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="block-center mt-xl wd-xl">
                <!-- START panel-->
                <div class="panel panel-dark panel-flat">
                    <div class="panel-heading text-center">
                        <a href="#">
                            <img class="block-center img-rounded" src="img/logo.png" alt="Image">
                        </a>
                    </div>
                    <div class="panel-body">
                        <p class="text-center pv">SIGN IN TO CONTINUE.</p>
                        <div class="mb-lg" data-parsley-validate="" novalidate="">
                            <div class="form-group has-feedback">
                                <asp:TextBox runat="server" ID="txtEmail" class="form-control" placeholder="Enter UserName.."></asp:TextBox>
                             <%--   <input class="form-control" id="exampleInputEmail1" type="email" placeholder="Enter email" autocomplete="off" required>--%>
                                <span class="fa fa-envelope form-control-feedback text-muted"></span>
                            </div>
                            <div class="form-group has-feedback">
                               <%-- <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password" required>--%>
                                <asp:TextBox runat="server" ID="txtPassword" placeholder="Password" class="form-control"></asp:TextBox>
                                <span class="fa fa-lock form-control-feedback text-muted"></span>
                            </div>    
                            <asp:Button ID="btnSubmit"  runat="server" class="btn btn-block btn-primary mt-lg" Text="Login" OnClick="btnSubmit_Click"/>
                        </div>
                        <p class="pt-lg text-center">Need to Signup?</p>
                        <a class="btn btn-block btn-default" href="Register.aspx">Register Now</a>
                    </div>
                </div>
                <!-- END panel-->
               
            </div>
        </div>
        <!-- =============== VENDOR SCRIPTS ===============-->
        <!-- MODERNIZR-->
        <script src="vendor/modernizr/modernizr.custom.js"></script>
        <!-- JQUERY-->
        <script src="vendor/jquery/dist/jquery.js"></script>
        <!-- BOOTSTRAP-->
        <script src="vendor/bootstrap/dist/js/bootstrap.js"></script>
        <!-- STORAGE API-->
        <script src="vendor/jQuery-Storage-API/jquery.storageapi.js"></script>
        <!-- PARSLEY-->
        <script src="vendor/parsleyjs/dist/parsley.min.js"></script>
        <!-- =============== APP SCRIPTS ===============-->
        <script src="js/app.js"></script>
    </form>
</body>
</html>
