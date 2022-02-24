using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fuDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (fuFileDemo.HasFile)
        {
            lblFileDemo.Text = " file is Selected : Name (" + fuFileDemo.FileName.ToString() + ")<br/>";
            lblFileDemo.Text += "file type : " + fuFileDemo.PostedFile.ContentType + "<br/>";
            lblFileDemo.Text += "file Extension" + System.IO.Path.GetExtension(fuFileDemo.FileName) + "<br/>";
            int fileSize = fuFileDemo.PostedFile.ContentLength;
            String MBOrKB = "";
            float fileSIzeInMb = fileSize / (1024*1024);
            MBOrKB = "MB";
            if (fileSIzeInMb <= 0) {
                fileSIzeInMb = fileSize / 1024;
                MBOrKB = "KB";

            }
            lblFileDemo.Text += "<br/>  file Size :" + fileSIzeInMb + MBOrKB;
            String folderPath = "~/userContent/" ;
            String AbsolutePath = Server.MapPath(folderPath);
            lblFileDemo.Text += "<br/>  file will be uploaded on the location :" + AbsolutePath;

            if (!Directory.Exists(AbsolutePath))
            {
                Directory.CreateDirectory(AbsolutePath);
            }
            fuFileDemo.SaveAs(AbsolutePath + fuFileDemo.FileName.ToString());

        }
        else
        {
            lblFileDemo.Text = "Please Select a file";
            return;
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        String AbsolutePath = Server.MapPath("~/userContent1/waves.png");
        FileInfo file = new FileInfo(AbsolutePath);
        if (file.Exists)
        {
            file.Delete();
            lblFileDemo.Text = "Deleted Successfully";

        }
        else
        {
            lblFileDemo.Text = "File Not Availabe";
        }
        //if (Directory.Exists(Server.MapPath("~/userContent1")))
        //{
        //    lblFileDemo.Text = "1";
        //    Directory.Delete(Server.MapPath("~/userContent1"));

        //}
        //[PR_ContactPhoto_Insert]
        //else{
        //    lblFileDemo.Text ="Folder not Availabel";
        //}
       
    }
    //protected void btnAdd_Click(object sender, EventArgs e)
    //{
    //    SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
    //    String fileName = "";
    //    String strErrorMsg = "";

    //    if (txtContactPhotoName.Text.Trim() == "")
    //    {
    //        strErrorMsg += "- Enter Contact name.<br/>";

    //    }

    //    if (fuContactPhoto.HasFile)
    //    {
    //        fileName =  "~/userContent/" + fuContactPhoto.FileName.ToString();
    //        String folderPath = "~/userContent/";
    //        String AbsolutePath = Server.MapPath(folderPath);

    //        if (!Directory.Exists(AbsolutePath))
    //        {
    //            Directory.CreateDirectory(AbsolutePath);
    //        }
    //        fuContactPhoto.SaveAs(AbsolutePath + fuContactPhoto.FileName.ToString());

    //    }
    //    else
    //    {
    //        strErrorMsg = "Please Select a file";
    //        return;
    //    }
    //    if (strErrorMsg != "")
    //    {
    //        lblContactPhotoMsg.Visible = true;
    //        lblMsgDiv.Visible = true;
    //        lblContactPhotoMsg.Text = strErrorMsg;
    //        return;
    //    }
        
       
      
    //    try
    //    {
    //        if (objConn.State != ConnectionState.Open)
    //            objConn.Open();

    //        SqlCommand objCmd = objConn.CreateCommand();
    //        objCmd.CommandType = CommandType.StoredProcedure;


    //        objCmd.Parameters.AddWithValue("@ContactName", txtContactPhotoName.Text);
    //        objCmd.Parameters.AddWithValue("@ContactPhotoPath", fileName);


    //        objCmd.CommandText = "[dbo].[PR_ContactPhoto_Insert]";
    //            objCmd.ExecuteNonQuery();
    //            lblContactPhotoMsg.Visible = true;
    //            lblMsgDiv.Visible = true;
    //            lblContactPhotoMsg.Text = "Data Inserted Successfully";
    //            txtContactPhotoName.Text = "";
    //            txtContactPhotoName.Text = "";

    //            txtContactPhotoName.Focus();
            


    //        if (objConn.State == ConnectionState.Open)
    //            objConn.Close();

    //    }
    //    catch (Exception exc)
    //    {
    //        lblErrMsg.Visible = true;
    //        lblMsgDiv.Visible = true;
    //        lblErrMsg.Text = exc.Message;

    //    }
    //    finally
    //    {
    //        if (objConn.State == ConnectionState.Open)
    //            objConn.Close();

    //    }

    //}

    //protected void gvContactPhotoList_Load(object sender, EventArgs e)
    //{

    //    foreach (GridViewRow row in gvContactPhotoList.Rows)
    //    {
    //        string lblFileSize = "";

    //        String fileName = row.Cells[1].ToString().Trim();
    //        lblFileSize = fileName;

    //    }
    //}
  
}