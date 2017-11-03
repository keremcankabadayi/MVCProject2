using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BİM451Homework2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["username"];

            if (cookie == null)
            {
                Login.Visible = false;
                NotLogin.Visible = true;
            }
            else
            {
                Login.Visible = true;
                NotLogin.Visible = false;
                usernamepanel.Text = cookie.Value;
            }

            Book book1 = new Book(1, "ASP.NET 3.5 Unleashed", "Stephen Walther", "Sams", 1920, "~/images/image1.jpg");
            Book book2 = new Book(2, "ASP.NET Evolution", "Dan Kent", "Sams", 384, "~/images/image2.jpg");
            Book book3 = new Book(3, "Mastering Web Development with Microsoft Visual Studio 2005", "John Paul Mueller", "Sams", 848, "~/images/image3.jpg");
            Book book4 = new Book(4, "Beginning ASP.NET 2.0", "Chris Hart, John Kauffman,Dave Sussman, and Chris Ullman", "Wrox", 792, "~/images/image4.jpg");
            Book book5 = new Book(5, "Beginning ASP.NET 3.5 in C# 2008:From Novice to Professional,Second Edition", "Matthew MacDonald", "Apress", 954, "~/images/image5.jpg");

            Session["Book1"] = book1;
            Session["Book2"] = book2;
            Session["Book3"] = book3;
            Session["Book4"] = book4;
            Session["Book5"] = book5;

            HyperLink2.Text = book1.Title;
            HyperLink3.Text = book2.Title;
            HyperLink4.Text = book3.Title;
            HyperLink5.Text = book4.Title;
            HyperLink6.Text = book5.Title;

            HyperLink2.NavigateUrl = "~/BookInfo.aspx?id=" + book1.BookID;
            HyperLink3.NavigateUrl = "~/BookInfo.aspx?id=" + book2.BookID;
            HyperLink4.NavigateUrl = "~/BookInfo.aspx?id=" + book3.BookID;
            HyperLink5.NavigateUrl = "~/BookInfo.aspx?id=" + book4.BookID;
            HyperLink6.NavigateUrl = "~/BookInfo.aspx?id=" + book5.BookID;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("username");
            cookie.Expires = DateTime.Now.AddDays(-7);
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }
    }
}