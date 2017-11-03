<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BİM451Homework2.Default" %>

<!DOCTYPE html>
    <html>

    <head runat="server">
        <title>Default</title>
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Panel ID="NotLogin" runat="server" Width="162px">
                    <p>You are not logged in.</p>
                    <p>Please log in
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">here</asp:HyperLink>. </p>
                </asp:Panel>
                <asp:Panel ID="Login" runat="server">
                    <div id="welcomediv" style="background-color:lemonchiffon" class="auto-style2">
                        <p class="auto-style1"> Welcome
                            <asp:Label ID="usernamepanel" runat="server" Text="Label"> </asp:Label>
                        </p>
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Cart.aspx">Display Shopping Cart</asp:HyperLink>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
                        <br />
                    </div>
                    <div id="bookshowdiv" class="auto-style3">
                        <p>Click on a link below:</p>
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" Text=""></asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink3" runat="server" Text=""></asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server" Text=""></asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink5" runat="server" Text=""></asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink6" runat="server" Text=""></asp:HyperLink>
                    </div>
                </asp:Panel>
            </div>
        </form>
    </body>

    </html>