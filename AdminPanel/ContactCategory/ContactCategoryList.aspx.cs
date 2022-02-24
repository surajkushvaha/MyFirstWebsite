using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminPanel_ContactCategory_ContactCategoryList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection objConn = new SqlConnection();
        objConn.ConnectionString = "data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ";
        objConn.Open();
        SqlCommand objCmd = new SqlCommand();
        objCmd.Connection = objConn;
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_ContactCategory_SelectAll";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        gvContactCategory.DataSource = objSDR;
        gvContactCategory.DataBind();
        objConn.Close(); 
    }
}