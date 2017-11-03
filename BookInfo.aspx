<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookInfo.aspx.cs" Inherits="BİM451Homework2.BookInfo" %>

<!DOCTYPE html>
    <html>

    <head runat="server">
        <title>BookInfo</title>
        <style type="text/css">
        
        .auto-style4 {
            width: 300px;
            position:relative;
            float:left;
        }

        .auto-style5{
            margin-left:30px;
            width: 400px;
            position:relative;
            float:left;

        }

    </style>

    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Panel ID="panelerror" runat="server">
                    <h2>Invalid Book ID!!</h2>
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Return to Main Page</asp:HyperLink>
                </asp:Panel>
                <asp:Panel ID="regularpanel" runat="server">
                    <div id="picturecontain" class="auto-style4">
                        <asp:Image ID="Image1" runat="server" />
                    </div>
                    <div id="restcontain" class="auto-style5">
                        <h2>
                        <asp:Label ID="Labelbookname" runat="server" Text=""></asp:Label>
                        </h2>
                        <asp:Label ID="Labelwriter" runat="server" Text=""></asp:Label><br />
                        <br />
                        <asp:Label ID="labelpublisher" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Label ID="labelpage" runat="server" Text=""></asp:Label><br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" />
                        <asp:Label id="labeltocard" runat="server" Text=""></asp:Label>
                        <br /><br /><br /><br />
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Cart.aspx">Display Shopping Cart</asp:HyperLink><br />
                        <br />
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">Return to Main Page</asp:HyperLink>
                    </div>
                </asp:Panel>
            </div>
        </form>
    </body>

    </html>