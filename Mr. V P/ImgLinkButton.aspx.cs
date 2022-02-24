using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImgLinkButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        imgbtnClick.ImageUrl = "~/images/logo.png";
        imgbtnClick.ToolTip = "navigate to GNUMS";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        imgbtnClick.PostBackUrl = "https://darshanums.in/Login.aspx";
    }
    protected void lbtnClick_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "link button clicked...";
    }
    protected void btnClick_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "simple button clicked...";
    }


    protected void imgbtnNevigate_Click(object sender, ImageClickEventArgs e)
    {
        lblMessage.Text = "simple img button clicked...";
    }
}