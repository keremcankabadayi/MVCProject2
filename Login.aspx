<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BİM451Homework2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 245px;
            height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    <br />
        <asp:Label ID="Label1" runat="server" Text="Label">First Name: </asp:Label>
        
        <asp:TextBox ID="TextBox1" runat="server" Width="120px"></asp:TextBox>
        
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Label">Last Name: </asp:Label>
    
        <asp:TextBox ID="TextBox2" runat="server" Width="120px"></asp:TextBox><br /><br />
    
        <asp:Button ID="Button1" runat="server" Text="Login" Width="60px" style="display: block; margin: 0 auto;" OnClick="Button1_Click"  />
    
    </div>
    </form>
</body>
</html>
