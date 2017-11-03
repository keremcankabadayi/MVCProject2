<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BİM451Homework2.Login" %>

 <!DOCTYPE html>
    <html>

    <head runat="server">
        <title>Login</title>
    </head>

    <body>
        <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Label">First Name: </asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="120px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label">Last Name: </asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="120px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login" Width="60px" OnClick="Button1_Click" />
        </form>
    </body>

    </html>
