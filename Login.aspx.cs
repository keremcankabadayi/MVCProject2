using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BİM451Homework2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("username");
            cookie.Value = TextBox1.Text + " " + TextBox2.Text;
            cookie.Expires = DateTime.Now.AddDays(5d);
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }
    }
}