using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListControlDemo_DropdownListControlDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //ddlCountry.Items.Add("India");
        if (!Page.IsPostBack)
        {
            ListItem liIndia = new ListItem();
            liIndia.Text = "India";
            liIndia.Value = "91";
            ddlCountry.Items.Add(liIndia);
            ddlCountry.Items.Add(new ListItem("China", "92"));
            ddlCountry.Items.Add(new ListItem("Srilanka", "93"));
            ddlCountry.Items.Add(new ListItem("Bangladesh", "94"));
            ddlCountry.Items.Add(new ListItem("Nepal", "95"));
            ddlCountry.Items.Add(new ListItem("USA", "96"));
        }

    }
    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = ddlCountry.SelectedValue ;
        //lblMessage.Text = ddlCountry.SelectedItem.Text;
        //lblMessage.Text = ddlCountry.SelectedIndex.ToString().Trim();
        //lblMessage.Text = ddlCountry.SelectedIndex.ToString().Trim() + " - " +ddlCountry.SelectedValue.Trim() + " - " +ddlCountry.SelectedItem.Text.Trim();
        foreach (ListItem li in ddlCountry.Items)
        {
            if (li.Selected == true)
            {
                lblMessage.Text += "<strong>" + li.Value + " - " + li.Text + "</strong><br/>";
            }
            else
            {
                lblMessage.Text += li.Value + " - " + li.Text + "<br/>";
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
       {
        int flag = 0;
        if (txtCountryCode.Text.Trim() != "" && txtCountryName.Text.Trim() != "")
        {
            foreach (ListItem li in ddlCountry.Items)
            {
                if (li.Text == txtCountryName.Text.Trim() || li.Value == txtCountryCode.Text.Trim() || string.Equals(li.Text, txtCountryName.Text, StringComparison.OrdinalIgnoreCase))
                {
                    flag = 1;
                    break;

                }

            }
            if (flag == 0)
            {
                ddlCountry.Items.Add(new ListItem(txtCountryName.Text, txtCountryCode.Text));

            }
            else
            {
                lblMessage.Text = "This is Already Available";
            }
        }
        else
        {
            lblMessage.Text = "Please Provide Data Properly";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in ddlCountry.Items)
        {
            if (li.Text == txtCountryName.Text.Trim() && li.Value == txtCountryCode.Text.Trim())
            {
                //int index = ddlCountry.Items.IndexOf(li);
                ddlCountry.Items.Remove(li);
                break;

            } else
            {
                lblMessage2.Text = "ITEM NOT FOUND";
            }
        }
      
    }
}