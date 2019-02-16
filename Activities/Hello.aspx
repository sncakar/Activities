<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hello.aspx.cs" Inherits="Activities.Hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>HELLO PAGE</h3>
            <asp:Button Text="text" runat="server" ID="btn_example" OnClick="btn_example_Click" />
        </div>
    </form>
</body>
</html>
