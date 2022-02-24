using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_State_StateAddEditPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillDropDownList();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlInt32 strCountryID =  SqlInt32.Null;
        SqlString strStateName = SqlString.Null; 
        SqlString strStateCode = SqlString.Null; 

        //server side validation
        String strErrorMsg = "";
        if (ddlCountry.SelectedIndex == 0)
        {
            strErrorMsg += "- Select  Country <br/>";
        }
        if (txtStateName.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  State <br/>";
        }
        if (txtStateCode.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  State Code <br/>";
        }
        if (strErrorMsg != "")
        {
            lblStateMsg.Visible = true;
            lblMsgDiv.Visible = true;
            lblStateMsg.Text = strErrorMsg;
            return;
        }

        //Gather the information 
        if (ddlCountry.SelectedIndex > 0)
        {
            strCountryID = Convert.ToInt32(ddlCountry.SelectedValue);
        }
        if (txtStateName.Text.Trim() != "")
        {  
            strStateName = txtStateName.Text.Trim();
        }
        if (txtStateCode.Text.Trim() != "")
        {
            strStateCode = txtStateCode.Text.Trim();
        }
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ");
        objConn.Open();
        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "[dbo].[PR_State_Insert]";
        objCmd.Parameters.AddWithValue("@CountryID", strCountryID);
        objCmd.Parameters.AddWithValue("@StateName", strStateName);
        objCmd.Parameters.AddWithValue("@StateCode", strStateCode);
        objCmd.ExecuteNonQuery();

        objConn.Close();
        lblStateMsg.Visible = true;
        lblMsgDiv.Visible = true;
        lblStateMsg.Text = "Data Inserted Successfully";
        ddlCountry.SelectedIndex = 0;
        txtStateName.Text = "";
        txtStateCode.Text = "";

        ddlCountry.Focus();

    }
    private void FillDropDownList()
    {
         SqlConnection objConn = new SqlConnection("data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ");
            objConn.Open();
            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_Country_SelectForDropDownList";
            SqlDataReader objSDR = objCmd.ExecuteReader();
            if (objSDR.HasRows == true)
            {
                ddlCountry.DataSource = objSDR;
                ddlCountry.DataValueField = "CountryID";
                ddlCountry.DataTextField = "CountryName";
                ddlCountry.DataBind();
            }
            ddlCountry.Items.Insert(0, new ListItem("Select Your Country","-1"));
            objConn.Close();
        
    }
}