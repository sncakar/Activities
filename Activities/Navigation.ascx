<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigation.ascx.cs" Inherits="Activities.Navigation" %>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Default.aspx">Activities</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown" runat="server" id="li_login">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Giriş Yap <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="LoginAdmin.aspx">Manager </a>
                        </li>
                        <li>
                            <a href="LoginMember.aspx">Member </a>
                        </li>
                    </ul>
                </li>
                <li runat="server" id="li_newAccount">
                    <a href="NewAccount.aspx"> New Account </a>
                </li>
                <li class="dropdown" runat="server" id="li_activitiesManagement">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Activity Management <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="Create.aspx" runat="server">Create</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="Logout.aspx" runat="server" id="li_logout">Çıkış Yap</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
