<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PropertiesTest.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
                        <p class="text-center pv">SIGNUP TO GET INSTANT ACCESS.</p>
                        <div class="mb-lg" data-parsley-validate="" no="" role="form" validate="">
                            <div class="form-group has-feedback">
                                <label class="text-muted" for="signupInputEmail1">Email address</label>                                
                                <asp:TextBox class="form-control" ID="signupInputEmail1" runat="server" placeholder="Enter email"></asp:TextBox>
                                <span class="fa fa-envelope form-control-feedback text-muted"></span>
                            </div>
                             <div class="form-group has-feedback">
                                <label class="text-muted" for="signupInputEmail1">User Name</label>                                
                                <asp:TextBox class="form-control" ID="signupUserName" runat="server" placeholder="Enter User Name"></asp:TextBox>
                                <span class="fa fa-envelope form-control-feedback text-muted"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="text-muted" for="signupInputPassword1">Password</label>
                                <asp:TextBox runat="server" ID="signupInputPassword1" placeholder="Password" class="form-control"></asp:TextBox>                                
                                <span class="fa fa-lock form-control-feedback text-muted"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="text-muted" for="signupInputRePassword1">Retype Password</label>
                                <asp:TextBox runat="server" ID="signupInputRePassword1" placeholder="Retype Password" class="form-control"></asp:TextBox>                                 
                                <span class="fa fa-lock form-control-feedback text-muted"></span>
                            </div>                           
                            
                            <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click"  runat="server" class="btn btn-block btn-primary mt-lg" Text="Create account"/>
                            
                        </div>
                        <p class="pt-lg text-center">Have an account?</p>
                        <a class="btn btn-block btn-default" href="Login.aspx">Signup</a>
                    </div>
                </div>
                <!-- END panel-->               
            </div>
        </div>
    </form>
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
</body>
</html>
