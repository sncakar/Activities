﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Activities.LoginAdmin" %>

<%@ Register Src="~/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Login Page</title>

    <!-- Bootstrap Core CSS -->
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="Assets/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="Assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!--Navigation-->
    <uc1:Navigation runat="server" ID="Navigation" />
    <!--Navigation-->

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Please Enter Your Admin Information
                </h1>
            </div>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>Admin Login Info</h4>
                    </div>
                    <div class="panel-body">
                        <form runat="server" id="form_adminLogin">
                            <div class="form-group">
                                <label for="email">Name and Surname:</label>
                                <asp:TextBox runat="server" ID="text_adminNameAndSurname" CssClass="form-control" required />
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <asp:TextBox runat="server" ID="text_adminPassword" CssClass="form-control" TextMode="Password" required />
                            </div>
                            <asp:Button Text="Enter" runat="server" CssClass="btn btn-default" ID="button_adminLogin" OnClick="button_adminLogin_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Activites Team 2017</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="Assets/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Assets/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        })
    </script>

</body>

</html>

