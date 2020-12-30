<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="bootstrap-4.3.1-dist/css/bootstrap.min.css" />
    <script  type="text/javascript">

      function ValidAlphabet() {    
    
    var code = (event.which) ? event.which : event.keyCode;    
    
    if ((code >= 65 && code <= 90) ||    
        (code >= 97 && code <= 122) ) 
    { return true; }    
    else    
    { alert("Enter only text");}    
        }  
     
    </script>
             
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="Label6" runat="server" Text="userid" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="500px"  style="margin-left: 68px"  BorderColor="#000066"  ></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Login</asp:HyperLink>
            <br />
            <br />
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="500px" onkeypress="return ValidAlphabet() " BorderColor="#000099" ></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="500px"  style="margin-left: 109px" TextMode="Password" BorderColor="#000099" ></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="ConfirmPassword"></asp:Label>
&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="500px"  style="margin-left: 20px" TextMode="Password" BorderColor="#000099" ></asp:TextBox>
        &nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="phone"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="500px"  MaxLength="10" style="margin-left: 111px" TextMode="Phone" pattern="\d{10}" OnTextChanged="TextBox4_TextChanged" BorderColor="#000099" ></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click"   style="margin-left: 109px" Text="Button" Width="236px" class="btn btn-primary" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
