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


            if (ID == null)
            {

                panelnull.Visible = true;
                regularpanel.Visible = false;
                panelover.Visible = false;
            }

            else if (x>5){
                panelover.Visible = true;
                panelnull.Visible = false;
                regularpanel.Visible = false;


            }
            else
            {
                panelnull.Visible = false;
                panelover.Visible = false;
                regularpanel.Visible = true;
            }



            string key = "Book" + ID;
            Book bookx = (Book)Session[key];
           

            if (ID != null) { 
                Image1.ImageUrl = bookx.ImageUrl;
                Labelbookname.Text =bookx.Title;
                Labelwriter.Text = "Author: "+bookx.Author;
                labelpublisher.Text = "Publisher: "+ bookx.Publisher;
                labelpage.Text = "Pages: "+bookx.PageNumber.ToString();
            }



            List<int> SelectedBookIndices = new List<int>();     //???
            Session["Cart"] = SelectedBookIndices;



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            




        }
    }
   
}