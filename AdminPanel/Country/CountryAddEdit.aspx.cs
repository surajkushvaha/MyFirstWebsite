using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;

public partial class AdminPanel_Country_CountryAddEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        // Declare laocal Variables to insert the data
        SqlString strCountryName = SqlString.Null;
        SqlString strCountryCode = SqlString.Null;
        //Validate the Data
        String strErrorMsg = "";
        if (txtCountryName.Text.Trim() == "")
        {
            strErrorMsg += "- Enter Contry name.<br/>";
        
        }
        if (txtCountryCode.Text.Trim() == "")
        {
            strErrorMsg += "- Enter Contry code.<br/>";

        }

        if (strErrorMsg != "")
        {
            lblCountryMsg.Visible = true;
            lblMsgDiv.Visible = true;
            lblCountryMsg.Text = strErrorMsg;
            return;
        }
        //Save tche Country Date
        //Establish the Connection
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ");
        //objConn.ConnectionString = "data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ";
        objConn.Open();
        //Prepare the Command
        //SqlCommand objCmd = new SqlCommand();
        // objCmd.Connection = objConn;
        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "[dbo].[PR_Country_Insert]";
        strCountryName = txtCountryName.Text.Trim();
        strCountryCode = txtCountryCode.Text.Trim();
        //Pass the parameters in the SP
        objCmd.Parameters.AddWithValue("@CountryName", strCountryName);
        objCmd.Parameters.AddWithValue("@CountryCode", strCountryCode);
        objCmd.ExecuteNonQuery();
        objConn.Close();
        lblCountryMsg.Visible = true;
        lblMsgDiv.Visible = true;
        lblCountryMsg.Text = "Data Inserted Successfully";
        txtCountryName.Text = "";
        txtCountryCode.Text = "";

        txtCountryName.Focus();
    }
}