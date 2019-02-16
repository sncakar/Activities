<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Activities.Default" %>

<%@ Register Src="~/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Activities</title>

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
                <h1 class="page-header">All activities are listed below. Please login to search for activities.
                </h1>
            </div>

            <div class="col-lg-12" runat="server" id="div_searchActivityContent">
                <form runat="server" id="form_searchActivities">
                    <div class="form-group">
                        <label for="name">Activity Name:</label>
                        <asp:TextBox runat="server" ID="text_searchActivityName" CssClass="form-control" required />
                    </div>
                    <div class="form-group">
                        <label for="start">Start Date:</label>
                        <asp:TextBox runat="server" ID="text_searchActivityStartDate" CssClass="form-control datepicker-start" />
                    </div>
                    <div class="form-group">
                        <label for="end">End Date:</label>
                        <asp:TextBox runat="server" ID="text_searchActivityEndDate" CssClass="form-control datepicker-end" />
                    </div>

                    <asp:Button Text="Search" runat="server" CssClass="btn btn-default col-lg-2" ID="button_searchActivity" OnClick="button_searchActivity_Click" />
                </form>
            </div>

            <div class="col-lg-12">
                <h3 class="page-header" runat="server" id="h3_searchedActivityName">All activities
                </h3>
            </div>

            <asp:Repeater runat="server" ID="repeater_activities">
                <ItemTemplate>

                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4><i class="fa fa-fw fa-check"></i><%#DataBinder.Eval(Container.DataItem,"NAME")%></h4>
                            </div>
                            <div class="panel-body">
                                <p>Price : <%#DataBinder.Eval(Container.DataItem,"PRICE")%></p>
                                <br />
                                <p>QUOTA : <%#DataBinder.Eval(Container.DataItem,"QUOTA")%></p>
                                <br />
                                <p>Start :<%#DataBinder.Eval(Container.DataItem,"STARTDATE")%></p>
                                <br />
                                <p>End : <%#DataBinder.Eval(Container.DataItem,"ENDDATE")%></p>
                                <br />
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>

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

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        $(function () {
            $(".datepicker-start").datepicker();
            $(".datepicker-end").datepicker();
        });
    </script>

</body>

</html>
