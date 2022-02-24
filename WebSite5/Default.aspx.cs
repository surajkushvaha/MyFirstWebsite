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

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtInputValue1.Text.Trim().Length > 0 && txtInputValue2.Text.Trim().Length > 0 && txtOperator.Text.Trim().Length>0)
        {
            double input1 = Convert.ToDouble(txtInputValue1.Text);
            double input2 = Convert.ToDouble(txtInputValue2.Text);
            if (txtOperator.Text.Trim().Length > 1)
            {
                labelMsg.Text = "please enter only operator in operater field";
                txtOutputValue.Text = "some error occuered";

            }
            else
            {
                char op = Convert.ToChar(txtOperator.Text.Trim());
                if (string.Equals(op, '+'))
                {
                    txtOutputValue.Text = Convert.ToString(input1 + input2);
                    labelMsg.Text = "success";

                }
                else if (string.Equals(op, '-'))
                {
                    txtOutputValue.Text = Convert.ToString(input1 - input2);
                    labelMsg.Text = "success";

                }
                else if (string.Equals(op, '*'))
                {
                    txtOutputValue.Text = Convert.ToString(input1 * input2);
                    labelMsg.Text = "success";

                }
                else if (string.Equals(op, '/'))
                {
                    if (input2 != 0)
                    {
                        txtOutputValue.Text = Convert.ToString(input1 / input2);
                        labelMsg.Text = "success";
                    }
                    else
                    {
                        labelMsg.Text = "Division by 0 is not Possible";
                    }

                }
                else if (string.Equals(op, '%'))
                {
                    txtOutputValue.Text = Convert.ToString(input1 % input2);
                    labelMsg.Text = "success";

                }
                else
                {
                    labelMsg.Text = "Please follow instruction above";
                    txtOutputValue.Text = "some error occured";

                }
            }
        }
        else
        {
            labelMsg.Text = "Please Provide Input";
            }
    }


    protected void txtInputValue1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtOperator_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtInputValue2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}