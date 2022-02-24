using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    
    protected void chkAll_CheckedChanged(object sender, EventArgs e)
    {

        if(chkAll.Checked){
            chkDance.Checked = true;
            chkSing.Checked = true;
            chkStudy.Checked = true;
            chkLearning.Checked = true;
            chkFood.Checked = true;
            chkAll.Text = "Uncheck All";
            lblSlectedHobbies.Text = chkDance.Text + "," + chkFood.Text + "," + chkLearning.Text + "," + chkSing.Text + "," + chkStudy.Text;
        }
        else
        {
            chkDance.Checked = false;
            chkSing.Checked = false;
            chkStudy.Checked = false;
            chkLearning.Checked = false;
            chkFood.Checked = false;
            chkAll.Text = "Select All";
            lblSlectedHobbies.Text = "Nothing Selected";
        }
    }
    protected void rbEngineering_CheckedChanged(object sender, EventArgs e)
    {
        if (rbEngineering.Checked)
        {
            secEngg.Visible = true;
            secCom.Visible= false;
            secDip.Visible = false;
            lblSelectedClg.Text = rbEngineering.Text;

        }
    }
    protected void rbCommerce_CheckedChanged(object sender, EventArgs e)
    {
        if (rbCommerce.Checked)
        {
            secEngg.Visible = false;
            secCom.Visible = true;
            secDip.Visible = false;
            lblSelectedClg.Text = rbCommerce.Text;

        }
    }
    protected void rbDiploma_CheckedChanged(object sender, EventArgs e)
    {
        if (rbDiploma.Checked)
        {
            secEngg.Visible = false;
            secCom.Visible = false;
            secDip.Visible = true;
            lblSelectedClg.Text = rbDiploma.Text;

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (chkAll.Checked == false)
        {
            if (chkDance.Checked == true)
            {
                lblSlectedHobbies.Text = chkDance.Text + ",";
            }
            if (chkFood.Checked == true)
            {
                lblSlectedHobbies.Text = chkFood.Text + ",";
            }
            if (chkLearning.Checked == true)
            {
                lblSlectedHobbies.Text = chkLearning.Text + ",";
            }
            if (chkSing.Checked == true)
            {
                lblSlectedHobbies.Text = chkSing.Text + ",";
            }
            if (chkStudy.Checked == true)
            {
                lblSlectedHobbies.Text = chkStudy.Text;
            }
        }
        if (rbEngineering.Checked == true)
        {
            if (rbComputer.Checked == true)
            {
                lblSelectedCourses.Text = rbComputer.Text;
            }
            if (rbCivil.Checked == true)
            {
                lblSelectedCourses.Text = rbCivil.Text;
            }
            if (rbMech.Checked == true)
            {
                lblSelectedCourses.Text = rbMech.Text;
            }
            if(rbEE.Checked==true)
            {
                lblSelectedCourses.Text = rbEE.Text;
            }
        }
        if (rbCommerce.Checked == true)
        {
            if (rbBBA.Checked == true)
            {
                lblSelectedCourses.Text = rbBBA.Text;
            }
            if (rbBCA.Checked == true)
            {
                lblSelectedCourses.Text = rbBCA.Text;
            }
            if (rbBCOM.Checked == true)
            {
                lblSelectedCourses.Text = rbBCOM.Text;
            }
        }
        if (rbDiploma.Checked == true)
        {
            if (rbDipCivil.Checked == true)
            {
                lblSelectedCourses.Text = rbDipCivil.Text;
            }
            if (rbDipEE.Checked == true)
            {
                lblSelectedCourses.Text = rbDipEE.Text;
            }
            if (rbDipMech.Checked == true)
            {
                lblSelectedCourses.Text = rbDipMech.Text;
            }
        }
    }


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
   
    protected void btnSubmitBranch_Click(object sender, EventArgs e)
    {

        string str = "";
        if (chkDegree.Checked && chkDiploma.Checked)
        {
            lblCollageDegree.Visible = true;
            lblCollageDiploma.Visible = true;
            if (chkComputer.Checked)
                str += chkComputer.Text + "<br>";
            if (chkCivil.Checked)
                str += chkCivil.Text + "<br>";
            if (chkMechanical.Checked)
                str += chkMechanical.Text + "<br>";
            if (chkElectrical.Checked)
                str += chkElectrical.Text + "<br>";
            if (chkComputerDiploma.Checked)
                str += chkComputerDiploma.Text + "<br>";
            if (chkCivilDiploma.Checked)
                str += chkCivilDiploma.Text + "<br>";
            if (chkMechanicalDiploma.Checked)
                str += chkMechanicalDiploma.Text + "<br>";
            if (chkElectricalDiploma.Checked)
                str += chkElectricalDiploma.Text + "<br>";
            lblSelectedBranch.Text += "You Have Selected " + str;
        }
        else if (chkDegree.Checked)
        {
            lblCollageDegree.Visible = true;
            if (chkComputer.Checked)
                str += chkComputer.Text + "<br>";
            if (chkCivil.Checked)
                str += chkCivil.Text + "<br>";
            if (chkMechanical.Checked)
                str += chkMechanical.Text + "<br>";
            if (chkElectrical.Checked)
                str += chkElectrical.Text + "<br>";
            lblSelectedBranch.Text += "You Have Selected " + str;
        }
        else if (chkDiploma.Checked)
        {
            lblCollageDiploma.Visible = true;
            if (chkComputerDiploma.Checked)
                str += chkComputerDiploma.Text + "<br>";
            if (chkCivilDiploma.Checked)
                str += chkCivilDiploma.Text + "<br>";
            if (chkMechanicalDiploma.Checked)
                str += chkMechanicalDiploma.Text + "<br>";
            if (chkElectricalDiploma.Checked)
                str += chkElectricalDiploma.Text + "<br>";
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
