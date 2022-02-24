using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack)
        {
            btnSubmitBranch.Visible = true;
            chkSelectall.Visible = true;

            if (chkDegree.Checked && chkDiploma.Checked)
            {
                lblCollageDegree.Visible = true;
                lblCollageDiploma.Visible = true;
            }
            else if (chkDiploma.Checked)
            {

                lblCollageDiploma.Visible = true;
            }
            else if (chkDegree.Checked)
            {

                lblCollageDegree.Visible = true;
            }
            else
            {
                chkSelectall.Visible = false;
                btnSubmitBranch.Visible = false;
                lblCollageDegree.Visible = false;
                lblCollageDiploma.Visible = false;
            }
        }
    }

    //protected void btnSubmit_Click(object sender, EventArgs e)
    //{
    //    string str="";
    //    if(chkCricket.Checked)
    //    {
    //        str += chkCricket.Text;

    //    }
    //    if (chkFootball.Checked)
    //    {
    //        str += chkFootball.Text;
    //    }

    //    lblmessage.Text = str;

    //}
    //protected void chkAll_CheckedChanged(object sender, EventArgs e)
    //{
    //    chkCricket.Checked = true;
    //    chkFootball.Checked = true;
    //}


    protected void btnSubmitCollage_Click(object sender, EventArgs e)
    {
        chkSelectall.Visible = true;

        if (chkDegree.Checked && chkDiploma.Checked)
        {
            lblCollageDegree.Visible = true;
            lblCollageDiploma.Visible = true;
        }
        else if (chkDiploma.Checked)
        {
            
            lblCollageDiploma.Visible = true;
        }
        else if (chkDegree.Checked)
        {
            
            lblCollageDegree.Visible = true;
        }
        else
        {
            chkSelectall.Visible = false;
            btnSubmitBranch.Visible = false;
            lblCollageDegree.Visible = false;
            lblCollageDiploma.Visible = false;
        }
        
    }
    //protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (chkDegree.Checked && chkDiploma.Checked)
    //    {
    //        chkDegree.Checked = false;
    //        chkDiploma.Checked = false;
    //    }
    //    else
    //    {
    //        chkDegree.Checked = true;
    //        chkDiploma.Checked = true;
    //    }
    //}
    protected void btnSubmitBranch_Click(object sender, EventArgs e)
    {
        
        string str="";
        if(chkDegree.Checked && chkDiploma.Checked)
        {
            lblCollageDegree.Visible = true;
            lblCollageDiploma.Visible = true;
            if (chkComputer.Checked)
                str+= chkComputer.Text + "<br>";
            if (chkCivil.Checked)
                str+= chkCivil.Text + "<br>";
            if (chkMechanical.Checked)
                str+= chkMechanical.Text + "<br>";
            if (chkElectrical.Checked)
                str+= chkElectrical.Text + "<br>";
            if (chkComputerDiploma.Checked)
                str+= chkComputerDiploma.Text + "<br>";
            if (chkCivilDiploma.Checked)
                str+= chkCivilDiploma.Text + "<br>";
            if (chkMechanicalDiploma.Checked)
                str+= chkMechanicalDiploma.Text + "<br>";
            if (chkElectricalDiploma.Checked)
                str+= chkElectricalDiploma.Text + "<br>";
            lblSelectedBranch.Text += "You Have Selected " + str; 
        }
        else if(chkDegree.Checked)
        {
            lblCollageDegree.Visible = true;
            if (chkComputer.Checked)
                str+= chkComputer.Text + "<br>";
            if (chkCivil.Checked)
                str+= chkCivil.Text + "<br>";
            if (chkMechanical.Checked)
                str+= chkMechanical.Text + "<br>";
            if (chkElectrical.Checked)
                str+= chkElectrical.Text + "<br>";
            lblSelectedBranch.Text += "You Have Selected " + str;
        }
        else if(chkDiploma.Checked)
        {
            lblCollageDiploma.Visible = true;
            if (chkComputerDiploma.Checked)
                str+= chkComputerDiploma.Text + "<br>";
            if (chkCivilDiploma.Checked)
                str+= chkCivilDiploma.Text + "<br>";
            if (chkMechanicalDiploma.Checked)
                str+= chkMechanicalDiploma.Text + "<br>";
            if (chkElectricalDiploma.Checked)
                str+= chkElectricalDiploma.Text + "<br>";
            lblSelectedBranch.Text += "You Have Selected " + str;
        }

        

    }
    protected void chkSelectall_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSelectall.Checked)
        {
            chkComputer.Checked = true;

            chkCivil.Checked = true;

            chkMechanical.Checked = true;

            chkElectrical.Checked = true;

            chkComputerDiploma.Checked = true;

            chkCivilDiploma.Checked = true;

            chkMechanicalDiploma.Checked = true;

            chkElectricalDiploma.Checked = true;
        }
        else
        {
            chkComputer.Checked = false;

            chkCivil.Checked = false;

            chkMechanical.Checked = false;

            chkElectrical.Checked = false;

            chkComputerDiploma.Checked = false;

            chkCivilDiploma.Checked = false;

            chkMechanicalDiploma.Checked = false;

            chkElectricalDiploma.Checked = false;
        
        }
            
         
    }
}