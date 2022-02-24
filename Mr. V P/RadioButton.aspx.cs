using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RadioButton_ChechBox : System.Web.UI.Page
{
    static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
      

        
    }
    protected void rdmale_CheckedChanged(object sender, EventArgs e)
    {
        
        lblgender.Text = "you have selected male";
    }
    protected void rdFemale_CheckedChanged(object sender, EventArgs e)
    {
        lblgender.Text = "you have selected female";
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblMessage.Visible = true;
        if(rdDegree.Checked)
        {
            if(rdComputer.Checked)
            {
                lblMessage.Text = "you have selected " + rdComputer.Text;
            }
            else if(rdCivil.Checked)
            {
                lblMessage.Text = "you have selected " + rdCivil.Text;
            }
            else if (rdMechanical.Checked)
            {
                lblMessage.Text = "you have selected " + rdMechanical.Text;
            }
            else if (rdElectrical.Checked)
            {
                lblMessage.Text = "you have selected " + rdElectrical.Text;
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please Select Any Degree Branch";
            }
        }
        else if(rdDiploma.Checked)
        {
            if (rdComputerDiploma.Checked)
            {
                lblMessage.Text = "you have selected " + rdComputerDiploma.Text;
            }
            else if (rdCivilDiploma.Checked)
            {
                lblMessage.Text = "you have selected " + rdCivilDiploma.Text;
            }
            else if (rdMechanicalDiploma.Checked)
            {
                lblMessage.Text = "you have selected " + rdMechanicalDiploma.Text;
            }
            else if (rdElectricalDiploma.Checked)
            {
                lblMessage.Text = "you have selected " + rdElectricalDiploma.Text;
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please Select Any Diploma Branch";
            }
        }
        else
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Please Select valid Any Options";
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
         if(rdDegree.Checked)
        {
             rdDegree.Checked=false;

             rdComputer.Checked=false;
            
             rdCivil.Checked=false;
            
             rdMechanical.Checked=false;
           
             rdElectrical.Checked=false;           
            
        }
         else if (rdDiploma.Checked)
         {
             rdDiploma.Checked = false;
             rdComputerDiploma.Checked = false;

             rdCivilDiploma.Checked = false;

             rdMechanicalDiploma.Checked = false;

             rdElectricalDiploma.Checked = false;
         }
            
    }
    protected void rdDegree_CheckedChanged(object sender, EventArgs e)
    {
        lblCollageDegree.Visible = true;
    }
    protected void rdDiploma_CheckedChanged(object sender, EventArgs e)
    {
        lblCollageDiploma.Visible = true;
    }
}