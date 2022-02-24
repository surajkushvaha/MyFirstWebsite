using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_ContactCategory_ContactCategoryAddEditPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlString strContactCategoryName = SqlString.Null;
        String strErrorMsg = "";
        if (txtContactCategoryName.Text.Trim() == "")
        {
            strErrorMsg += "- Enter Contry name.<br/>";

        }
        

        if (strErrorMsg != "")
        {
            lblContactCategoryMsg.Visible = true;
            lblMsgDiv.Visible = true;
            lblContactCategoryMsg.Text = strErrorMsg;
            return;
        }
        
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ");
        objConn.Open();
        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "[dbo].[PR_ContactCategory_Insert]";
        strContactCategoryName = txtContactCategoryName.Text.Trim();
        objCmd.Parameters.AddWithValue("@ContactCategoryName", strContactCategoryName);
        objCmd.ExecuteNonQuery();
        objConn.Close();
        lblContactCategoryMsg.Visible = true;
        lblMsgDiv.Visible = true;
        lblContactCategoryMsg.Text = "Data Inserted Successfully";
        txtContactCategoryName.Text = "";

        txtContactCategoryName.Focus();
    }
}