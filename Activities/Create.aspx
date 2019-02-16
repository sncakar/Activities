<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Activities.Create" %>

<%@ Register Src="~/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create Activity</title>

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
                <h1 class="page-header">Create Activity
                </h1>
            </div>

            <div class="col-lg-12">
                <form runat="server">
                    <div class="form-group">
                        <label>Type:</label>
                        <asp:DropDownList runat="server" ID="drop_activities" CssClass="form-control">
                            <asp:ListItem Text="CINEMA" Value="0" />
                            <asp:ListItem Text="THEATRE" Value="1" />
                            <asp:ListItem Text="CONCERT" Value="2" />
                            <asp:ListItem Text="BOOK" Value="3" />
                            <asp:ListItem Text="FESTIVAL" Value="4" />
                            <asp:ListItem Text="SEMINAR" Value="5" />
                            <asp:ListItem Text="TRAVEL" Value="6" />
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label>Start:</label>
                        <asp:TextBox runat="server" ID="text_startDate" CssClass="form-control datepicker-start" required />
                    </div>

                    <div class="form-group">
                        <label>End:</label>
                        <asp:TextBox runat="server" ID="text_endDate" CssClass="form-control datepicker-end" required />
                    </div>

                    <div class="form-group">
                        <label>Name:</label>
                        <asp:TextBox runat="server" ID="text_name" CssClass="form-control" required />
                    </div>

                    <div class="form-group">
                        <label>Price:</label>
                        <asp:TextBox runat="server" ID="text_price" CssClass="form-control" required />
                    </div>

                    <div class="form-group">
                        <label>Quota:</label>
                        <asp:TextBox runat="server" ID="text_quota" CssClass="form-control" required />
                    </div>
                    <asp:Button Text="Save" runat="server" CssClass="form-control btn btn-primary" ID="button_createActivity" OnClick="button_createActivity_Click" />
                </form>
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

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        $(function () {
            $(".datepicker-start").datepicker({ dateFormat: 'dd-mm-yy' });
            $(".datepicker-end").datepicker({ dateFormat: 'dd-mm-yy' });
        });
    </script>

</body>

</html>
