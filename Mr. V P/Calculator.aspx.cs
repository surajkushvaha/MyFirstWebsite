using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
       
        /*if(txtvalue2.Text == "" && txtvalue1.Text == "")
        {
            lblError.Text = "Please Enter Both Number";
         }
        else if (txtvalue1.Text == "")
        {
            lblError.Text = "Please Enter first Number";
        }
        else if (txtOperator.Text != "+" || txtOperator.Text != "-" || txtOperator.Text != "*" || txtOperator.Text != "/" || txtOperator.Text != "%")
        {
            lblError.Text = "Please Enter validperator";
        }
        else if (txtvalue2.Text == "")
        {
            lblError.Text = "Please Enter second Number";
        }*/
        if(lblError.Text==String.Empty)
        {

            if (txtOperator.Text == "+")
            {
                txtanswer.Text = Convert.ToString(Convert.ToInt32(txtvalue1.Text) + Convert.ToInt32(txtvalue2.Text));
            }
            else if (txtOperator.Text == "-")
            {
                txtanswer.Text = Convert.ToString(Convert.ToInt32(txtvalue1.Text) - Convert.ToInt32(txtvalue2.Text));
            }
            else if (txtOperator.Text == "*")
            {
                txtanswer.Text = Convert.ToString(Convert.ToInt32(txtvalue1.Text) * Convert.ToInt32(txtvalue2.Text));
            }
            else if (txtOperator.Text == "/")
            {
                txtanswer.Text = Convert.ToString(Convert.ToInt32(txtvalue1.Text) / Convert.ToInt32(txtvalue2.Text));
            }
            else if (txtOperator.Text == "%")
            {
                txtanswer.Text = Convert.ToString(Convert.ToInt32(txtvalue1.Text) % Convert.ToInt32(txtvalue2.Text));
            }
        }
    }
}