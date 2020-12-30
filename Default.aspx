<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    
     <link rel="stylesheet" type="text/css" href="bootstrap-4.3.1-dist/css/bootstrap.min.css" />
    
</head>
<body>
   
    <form id="form1" runat="server">
        
        <div class="card-body" align="center">
            &nbsp<br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Login" class="h2 text-center mb-4"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="802px" class="form-control mb-4" required OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
     
           
        <p>
            <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
            <p>
            <asp:TextBox ID="TextBox2" runat="server" Height="37px" style="margin-left: 0px" Width="809px" class="form-control mb-4"></asp:TextBox>
        </p>
            <p>
&nbsp;&nbsp;
        </p>
        <p>
           
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" class="btn btn-primary" Width="136px" />
            <asp:Label ID="Label4" runat="server"></asp:Label>
        &nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#000066" NavigateUrl="register.aspx">Create New Account?

            </asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
            </div>
    </form>
   
</body>
    
</html>
