using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListControlDemo_CheckBoxListDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        

        //radiolist
        if(rblCountry.SelectedIndex>=0)
        { lblMessage.Text = rblCountry.SelectedItem.Text; }
        else
        {
            lblMessage.Text = "kindly selct any option";
        }
    }

    protected void btnShow2_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in cblCountry.Items)
        {
            if (li.Selected)
            {
                lblMessage2.Text += "<strong>" + li.Text + "</strong></br>";
            }
            else
            {
                lblMessage2.Text += li.Text + "</br>";

            }
        }
    }
}