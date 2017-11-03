<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BİM451Homework2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 178px;
            height: 22px;
        }
        .auto-style2 {
            position:relative;
            float:left;
            width: 183px;
            left: 0px;
            top: 0px;
        }
        .auto-style3 {
            position:relative;
             float:left;
            width: 510px;
            left: 0px;
            top: 0px;
            height: 269px;
        }
    </style>
    </head>
<body style="height: 337px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="NotLogIn" runat="server" style="background-color:palegreen" Width="162px"> 
            <p>&nbsp You are not logged in.</p>
            <p>&nbsp Please log in
           
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">here</asp:HyperLink>. </p>
        </asp:Panel>




        <asp:Panel ID="Login" runat="server">
           
           
            <div id="welcomediv" style="background-color:lemonchiffon" class="auto-style2">
                <p class="auto-style1"> Welcome 
                <asp:Label ID="usernamepanel" runat="server" Text="Label"> </asp:Label> 
                    
                </p>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Cart.aspx">Display Shopping Cart</asp:HyperLink><br /><br />

                 <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />

                <br />

            </div>


              <div id="bookshowdiv" class="auto-style3">
                  <p>Click on a link below:</p><br />
                  <asp:HyperLink ID="HyperLink2" runat="server" Text=""></asp:HyperLink><br /><br />
                  <asp:HyperLink ID="HyperLink3" runat="server" Text=""></asp:HyperLink><br /><br />
                  <asp:HyperLink ID="HyperLink4" runat="server" Text=""></asp:HyperLink><br /><br />
                  <asp:HyperLink ID="HyperLink5" runat="server" Text=""></asp:HyperLink><br /><br />
                  <asp:HyperLink ID="HyperLink6" runat="server" Text=""></asp:HyperLink>
                </div>

            </asp:Panel>


    
    </div>
    </form>
</body>
</html>
