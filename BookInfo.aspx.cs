using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BİM451Homework2
{

    public partial class BookInfo : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["id"];
            int x = Convert.ToInt32(ID);
            string key = "Book" + ID;
            Book bookx = (Book)Session[key];

            if ((1 <= x) && (x <= 5))
            {

                panelerror.Visible = false;
                regularpanel.Visible = true;

                Image1.ImageUrl = bookx.ImageUrl;
                Labelbookname.Text = bookx.Title;
                Labelwriter.Text = "Author: " + bookx.Author;
                labelpublisher.Text = "Publisher: " + bookx.Publisher;
                labelpage.Text = "Pages: " + bookx.PageNumber.ToString();
            }
            else
            {
                panelerror.Visible = true;
                regularpanel.Visible = false;
            }



        }





        protected void Button1_Click(object sender, EventArgs e)
        {


            List<int> SelectedBookIndices = new List<int>();
            Session["Cart"] = SelectedBookIndices;
            string ID = Request.QueryString["id"];
            int x = Convert.ToInt32(ID);
            if (SelectedBookIndices.Contains(x))
            {
                labeltocard.Text = "Book is already in the list";

            }
            else
            {
                SelectedBookIndices.Add(x);
                labeltocard.Text = "Book is added to shopping card.";
            }

            //       labeltocard.Text = string.Join("", SelectedBookIndices.ToArray());







        }
    }

}
