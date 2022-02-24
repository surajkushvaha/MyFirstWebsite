using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Contact_ContactAddEditPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillDropDownForCountryList();
            FillDropDownForStateList();
            FillDropDownForCityList();
            FillDropDownForContactCategoryList();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlInt32 strCountryID = SqlInt32.Null;
        SqlInt32 strStateID = SqlInt32.Null;
        SqlInt32 strCityID = SqlInt32.Null;
        SqlInt32 strContactCategoryID = SqlInt32.Null;
        SqlString strContactName = SqlString.Null;
        SqlString strContactNo = SqlString.Null;
        SqlString strWhatsappNo = SqlString.Null;
        SqlDateTime strBirthDate = SqlDateTime.Null;
        SqlString strEmail = SqlString.Null; 
        SqlInt32 strAge = SqlInt32.Null;
        SqlString strAddress = SqlString.Null;
        SqlString strBloodGroup = SqlString.Null;
        SqlString strFacebookID = SqlString.Null;
        SqlString strLinkedInID = SqlString.Null;

        String strErrorMsg = "";
        if (ddlCountry.SelectedIndex == 0)
        {
            strErrorMsg += "- Select  Country <br/>";
        }
        if (ddlState.SelectedIndex == 0)
        {
            strErrorMsg += "- Select  State <br/>";
        }
        if (ddlCity.SelectedIndex == 0)
        {
            strErrorMsg += "- Select  City <br/>";
        }
        if (ddlContactCategory.SelectedIndex == 0)
        {
            strErrorMsg += "- Select  Contact Category <br/>";
        }
        if (txtContactName.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  Contact Name <br/>";
        }
        if (txtContactNo.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  Contact No <br/>";
        }
        if (txtEmail.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  Email <br/>";
        }
        if (txtAddress.Text.Trim() == "")
        {
            strErrorMsg += "- Enter  Address <br/>";
        }

        if (strErrorMsg != "")
        {
            lblContactMsg.Visible = true;
            lblMsgDiv.Visible = true;
            lblContactMsg.Text = strErrorMsg;
            return;
        }

        if (ddlCountry.SelectedIndex > 0)
        {
            strCountryID = Convert.ToInt32(ddlCountry.SelectedValue);
        }
        if (ddlState.SelectedIndex > 0)
        {
            strStateID = Convert.ToInt32(ddlState.SelectedValue);
        }
        if (ddlCity.SelectedIndex > 0)
        {
            strCityID = Convert.ToInt32(ddlCity.SelectedValue);
        }
        if (ddlContactCategory.SelectedIndex > 0)
        {
            strContactCategoryID = Convert.ToInt32(ddlContactCategory.SelectedValue);
        }
        if (txtContactName.Text.Trim() != "")
        {
            strContactName = txtContactName.Text.Trim();
        }
        if (txtContactNo.Text.Trim() != "")
        {
            strContactNo = txtContactNo.Text.Trim();
        }
        if (txtEmail.Text.Trim() != "")
        {
            strEmail = txtEmail.Text.Trim();
        }
        if (txtAddress.Text.Trim() != "")
        {
            strAddress = txtAddress.Text.Trim();
        }
        strBirthDate =Convert.ToDateTime(txtBirthDate.Text.Trim());
        strWhatsappNo = txtWhatsappNo.Text.Trim();
        strBloodGroup = txtBloodGroup.Text.Trim();
        strFacebookID = txtFacebookID.Text.Trim();
        strLinkedInID = txtLinkedInID.Text.Trim();
        strAge =Convert.ToInt32(txtAge.Text.Trim());
        SqlConnection objConn = new SqlConnection(" data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ;");
        objConn.Open();

        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "[dbo].[PR_Contact_Insert]";
        objCmd.Parameters.AddWithValue("@CountryID", strCountryID);
        objCmd.Parameters.AddWithValue("@StateID", strStateID);
        objCmd.Parameters.AddWithValue("@CityID", strCityID);
        objCmd.Parameters.AddWithValue("@ContactCategoryID", strContactCategoryID);
        objCmd.Parameters.AddWithValue("@ContactName", strContactName);
        objCmd.Parameters.AddWithValue("@ContactNo", strContactNo);
        objCmd.Parameters.AddWithValue("@WhatsappNo", strWhatsappNo);
        objCmd.Parameters.AddWithValue("@BirthDate", strBirthDate);
        objCmd.Parameters.AddWithValue("@Email", strEmail);
        objCmd.Parameters.AddWithValue("@Age", strAge);
        objCmd.Parameters.AddWithValue("@Address", strAddress);
        objCmd.Parameters.AddWithValue("@BloodGroup", strBloodGroup);
        objCmd.Parameters.AddWithValue("@FacebookID", strFacebookID);
        objCmd.Parameters.AddWithValue("@LinkedINID", strLinkedInID);
        objCmd.ExecuteNonQuery();

        objConn.Close();
        lblContactMsg.Visible = true;
        lblMsgDiv.Visible = true;
        lblContactMsg.Text = "Data Inserted Successfully";
        ddlCountry.SelectedIndex = 0;
        ddlState.SelectedIndex = 0;
        ddlCity.SelectedIndex = 0;
        ddlContactCategory.SelectedIndex = 0;
         txtContactName.Text = "";
         txtContactNo.Text = "";
         txtWhatsappNo.Text = "";
         txtBirthDate.Text = "";
         txtEmail.Text = "";
         txtAge.Text = "";
         txtAddress.Text = "";
         txtBloodGroup.Text = "";
         txtFacebookID.Text = "";
         txtLinkedInID.Text = "";

        ddlCountry.Focus();
    }
    private void FillDropDownForCountryList()
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
        ddlCountry.Items.Insert(0, new ListItem("Select Country", "-1"));
        objConn.Close();

    }
    private void FillDropDownForStateList()
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
        ddlState.Items.Insert(0, new ListItem("Select State", "-1"));
        objConn.Close();

    }
    private void FillDropDownForCityList()
    {
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ");
        objConn.Open();
        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_City_SelectForDropDownList";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        if (objSDR.HasRows == true)
        {
            ddlCity.DataSource = objSDR;
            ddlCity.DataValueField = "CityID";
            ddlCity.DataTextField = "CityName";
            ddlCity.DataBind();
        }
        ddlCity.Items.Insert(0, new ListItem("Select City", "-1"));
        objConn.Close();

    }
    private void FillDropDownForContactCategoryList()
    {
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security  = True ;");
        objConn.Open();
        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_ContactCategory_SelectAll";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        if (objSDR.HasRows == true)
        {
            ddlContactCategory.DataSource = objSDR;
            ddlContactCategory.DataValueField = "ContactCategoryID";
            ddlContactCategory.DataTextField = "ContactCategoryName";
            ddlContactCategory.DataBind();
        }
        ddlContactCategory.Items.Insert(0, new ListItem("Select Contact Category","-1"));

        objConn.Close();
    }
}