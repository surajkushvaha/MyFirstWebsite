using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_City_CityAddEditPage : System.Web.UI.Page
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
        SqlInt32 strStateID = SqlInt32.Null;
        SqlString strCityName = SqlString.Null;
        SqlString strPinCode = SqlString.Null;
        SqlString strSTDCode = SqlString.Null;

        //server side validation
        String strErrorMsg = "";
        if (ddlState.SelectedIndex == 0)
        {
            strErrorMsg += "- Select  State <br/>";
        }
        if (txtCityName.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  City <br/>";
        }
        if (txtPinCode.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  Pin Code <br/>";
        }
        if (txtSTDCode.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  STD Code <br/>";
        }
        if (strErrorMsg != "")
        {
            lblCityMsg.Visible = true;
            lblMsgDiv.Visible = true;
            lblCityMsg.Text = strErrorMsg;
            return;
        }

        //Gather the information 
        if (ddlState.SelectedIndex > 0)
        {
            strStateID = Convert.ToInt32(ddlState.SelectedValue);
        }
        if (txtCityName.Text.Trim() != "")
        {
            strCityName = txtCityName.Text.Trim();
        }
        if (txtSTDCode.Text.Trim() != "")
        {
            strSTDCode = txtSTDCode.Text.Trim();
        }
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ");
        objConn.Open();
        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "[dbo].[PR_City_Insert]";
        objCmd.Parameters.AddWithValue("@StateID", strStateID);
        objCmd.Parameters.AddWithValue("@CityName", strCityName);
        objCmd.Parameters.AddWithValue("@PinCode", strPinCode);
        objCmd.Parameters.AddWithValue("@STDCode", strSTDCode);
        objCmd.ExecuteNonQuery();

        objConn.Close();
        lblCityMsg.Visible = true;
        lblMsgDiv.Visible = true;
        lblCityMsg.Text = "Data Inserted Successfully";
        ddlState.SelectedIndex = 0;
        txtCityName.Text = "";
        txtPinCode.Text = "";
        txtSTDCode.Text = "";

        ddlState.Focus();
    }
    private void FillDropDownList()
    {
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ");
        objConn.Open();
        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_State_SelectForDropDownList";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        if (objSDR.HasRows == true)
        {
            ddlState.DataSource = objSDR;
            ddlState.DataValueField = "StateID";
            ddlState.DataTextField = "StateName";
            ddlState.DataBind();
        }
        ddlState.Items.Insert(0, new ListItem("Select Your State", "-1"));
        objConn.Close();

    }
}