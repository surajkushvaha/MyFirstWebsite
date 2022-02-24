using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ValidationControl_StudentEnrollmentForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            lblErrorMsg.Text = "Data Saved Successfully";

        }
    }
   
   
    protected void CheckBoxRequired_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = chkTnC.Checked;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        lblLoginMsg.Text = "Login Successful";
    }
}