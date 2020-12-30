<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" BorderColor="Red" BorderStyle="Double" ForeColor="#000066"  Font-Size="Large" Width="1000px" Height="63px">Do you want to change password?</asp:Label>
            <br />
            <br />
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="changepass.aspx">Click here</asp:HyperLink>
    </form>
</body>
</html>
