using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AdminPanel_Country_CountryList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Establish the connection
        //Create Blank Connection Object
        SqlConnection objConn = new SqlConnection();
        objConn.ConnectionString = "data source = DESKTOP-HVL2F51\\SQLEXPRESS ; initial catalog = AddressBook ; Integrated Security = True ; ";
        //data source=DESKTOP-HVL2F51\SQLEXPRESS ;  This is source of Data/Server Name
        //initial catalog = AddressBook ; This is name of the Database
        //Intigrated Security = True ; If it is True consider as window authentication in the case of false SQL Authentication.
        //User ID = abc
        //Password=abc
        objConn.Open();// open the connection
        //Do your data work
        //Step 2 prepare the command Object
        SqlCommand objCmd = new SqlCommand();
        objCmd.Connection = objConn;
        objCmd.CommandType = CommandType.StoredProcedure;
        //objCmd.CommandType = CommandType.TableDirect;
        //objCmd.CommandType = CommandType.Text;
        objCmd.CommandText = "PR_Country_SelectAll";
        //objCmd.ExecuteNonQuery(); // Insert/Update/Delete
        //objCmd.ExecuteReader(); //Select
        //objCmd.ExecuteScalar(); //only one scaler value being returned
        //objCmd.ExecuteXmlReader(); //XML type of data 

        SqlDataReader objSDR = objCmd.ExecuteReader();
        gvCountry.DataSource = objSDR;
        gvCountry.DataBind();
        objConn.Close(); // close the connection
    }

}