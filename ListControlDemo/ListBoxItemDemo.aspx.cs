using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListControlDemo_ListBoxItemDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDisplay_Click(object sender, EventArgs e)
    {
      
        foreach (ListItem li in lstb.Items)
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
            foreach (ListItem li in lstb.Items)
            {
                if (li.Text == txtCountryName.Text.Trim() || li.Value == txtCountryCode.Text.Trim() || string.Equals(li.Text, txtCountryName.Text, StringComparison.OrdinalIgnoreCase))
                {
                    flag = 1;
                    break;

                }
                else
                {
                    lblMessage3.Text = "This is Already Available";
                }
            }
            if (flag == 0)
            {
                lstb.Items.Add(new ListItem(txtCountryName.Text, txtCountryCode.Text));

            }
           
        }
        else
        {
            lblMessage3.Text = "Please Provide Data Properly";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (txtCountryCode.Text.Trim() != "" && txtCountryName.Text.Trim() != "")
        {
            foreach (ListItem li in lstb.Items)
            {
                if (li.Text == txtCountryName.Text.Trim() && li.Value == txtCountryCode.Text.Trim())
                {
                    lstb.Items.Remove(li);
                    break;

                }
                else
                {
                    lblMessage2.Text = "ITEM NOT FOUND";
                }
            }
        }
        else
        {
            lblMessage3.Text = "Please Provide Data Properly";
        }
    }


    protected void btnEdit_Click(object sender, EventArgs e)
    {
        if (txtNewCode.Text.Trim() != "" && txtNewName.Text.Trim() != "")
        {
            foreach (ListItem li in lstb.Items)
            {
                if (li.Text == txtCountryName.Text.Trim() && li.Value == txtCountryCode.Text.Trim() && string.Equals(li.Text, txtCountryName.Text) )
                {
                    li.Text = txtNewName.Text.Trim();
                    li.Value = txtNewCode.Text.Trim();
                    break;
                }
                else
                {
                    lblMessage2.Text = "ITEM NOT FOUND";
                }
            }
        }
        else
        {
            lblMessage3.Text = "Please Provide Data Properly";
        }
    }
    //---------------------------------------------------------------------------------------------------/// 

    protected void btn1_Click(object sender, EventArgs e)
    {

        foreach (ListItem li in lstb.Items)
        {
            if (li.Selected ==true)
            {
            lstb2.Items.Add(new ListItem(li.Text, li.Value));
            }
        }

        for (int i = 0; i < lstb.Items.Count; i++)
        {
            ListItem li = lstb.Items[i];
            if (li.Selected)
            {
                lstb.Items.Remove(li);
                i--;
            }
        }


    }

    protected void btn2_Click(object sender, EventArgs e)
    {

        foreach (ListItem li in lstb.Items)
        {
            lstb2.Items.Add(new ListItem(li.Text, li.Value));
        }
        for (int i = 0; i < lstb.Items.Count; i++)
        {
            ListItem li = lstb.Items[i];
           
                lstb.Items.Remove(li);
                i--;
            
        }
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstb2.Items)
        {
            if (li.Selected == true)
            {
                lstb.Items.Add(new ListItem(li.Text, li.Value));
            }
        }
        for (int i = 0; i < lstb2.Items.Count; i++)
        {
            ListItem li = lstb2.Items[i];
            if (li.Selected)
            {
                lstb2.Items.Remove(li);
                i--;
            }
        }
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstb2.Items)
        {
            lstb.Items.Add(new ListItem(li.Text, li.Value));
        }
        for (int i = 0; i < lstb2.Items.Count; i++)
        {
            ListItem li = lstb2.Items[i];
           
                lstb2.Items.Remove(li);
                i--;
            
        }
    }
}