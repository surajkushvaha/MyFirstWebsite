<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My College</title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
</head>
<body>
    <div><asp:Image ID="imgLogo" runat="server" ImageUrl="https://darshan.ac.in/Content/media/DU-logo.svg" /> 
        <h2 title="index">Index</h2>
    <section id="navbar">
        <ul>
            <li title="Home"><a href="#">Home</a></li>
            <li title="About Darshan University"><a href="#about">About Us</a></li>
            <li title="Courses Offered by University"><a href="#courses">Courses</a></li>
            <li title="News"><a href="https://darshan.ac.in/placement/news" target="_blank">News</a></li>
            <li title="Contact with Darshan University"><a href="#form1">Contact</a></li>       
        </ul>
    </section>
        <h2>Be A Part of Darshan University</h2>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label> &nbsp;
            <asp:TextBox ID="txtName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>  
        </div>
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label> &nbsp;
            <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>  
        </div>
        <div>
            <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
            <asp:TextBox ID="txtMobile" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>  
        </div>
       
        <div>
            <asp:label ID="lblLike" runat="server" Text="What You Like?"></asp:label>
            <br />
            <asp:CheckBox ID="chkAll" runat="server" Text="Select All" OnCheckedChanged="chkAll_CheckedChanged" AutoPostBack="True" /><br />
            <asp:CheckBox ID="chkSing" runat="server" Text="Singing"/><br />
            <asp:CheckBox ID="chkDance" runat="server" Text="Dancing" /><br />
            <asp:CheckBox ID="chkStudy" runat="server" Text="Reading" /><br />
            <asp:CheckBox ID="chkLearning" runat="server" Text="Learning" /><br />
            <asp:CheckBox ID="chkFood" runat="server" Text="Food" /><br />
        </div>
        <div>
            <asp:Label ID="lblSelect" runat="server" Text="Select Your College"></asp:Label><br />
            <asp:RadioButton ID="rbEngineering" runat="server" Text="Engineering" GroupName="CollegeSlection" OnCheckedChanged="rbEngineering_CheckedChanged" AutoPostBack="True" />
            <asp:RadioButton ID="rbCommerce" runat="server" Text="Commerce" GroupName="CollegeSlection" AutoPostBack="True" OnCheckedChanged="rbCommerce_CheckedChanged" />
            <asp:RadioButton ID="rbDiploma" runat="server" Text="Diploma" GroupName="CollegeSlection" AutoPostBack="True" OnCheckedChanged="rbDiploma_CheckedChanged" />
        </div>
       
        <div id="secEngg" runat="server"  visible="false">
            <asp:Label ID="lblCourseEngg" runat="server" Text="Select Your Course"></asp:Label><br />
            <asp:RadioButton ID="rbComputer" runat="server" Text="Computer" GroupName="CourseEnggSlection" />
            <asp:RadioButton ID="rbCivil" runat="server" Text="Civil" GroupName="CourseEnggSlection" />
            <asp:RadioButton ID="rbMech" runat="server" Text="Mechanical" GroupName="CourseEnggSlection" />
            <asp:RadioButton ID="rbEE" runat="server" Text="Electrical" GroupName="CourseEnggSlection" />
        </div>
        <div id="secCom" runat="server"  visible="false">
            <asp:Label ID="lblCourseCommerce" runat="server" Text="Select Your Course"></asp:Label><br />
            <asp:RadioButton ID="rbBBA" runat="server" Text="BBA" GroupName="CourseComSlection" />
            <asp:RadioButton ID="rbBCOM" runat="server" Text="B.COM." GroupName="CourseComSlection" />
            <asp:RadioButton ID="rbBCA" runat="server" Text="BCA" GroupName="CourseComSlection" />
        </div>
        <div id="secDip" runat="server"  visible="false">
            <asp:Label ID="lblCourseDiploma" runat="server" Text="Select Your Course"></asp:Label><br />
            <asp:RadioButton ID="rbDipCivil" runat="server" Text="Civil" GroupName="CourseDipSlection" />
            <asp:RadioButton ID="rbDipMech" runat="server" Text="Mechanical" GroupName="CourseDipSlection" />
            <asp:RadioButton ID="rbDipEE" runat="server" Text="Electrical" GroupName="CourseDipSlection" />
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

       
        <div>
            Selected Hobbies: <asp:Label ID="lblSlectedHobbies" runat="server" Text="Nothing Selected"></asp:Label><br />
            Selected College: <asp:Label ID="lblSelectedClg" runat="server" Text="Nothing Selected"></asp:Label><br />
            Selected Courses: <asp:Label ID="lblSelectedCourses" runat="server" Text="Nothing Selected"></asp:Label>
            Selected Branch: <asp:Label ID="Label1" runat="server" EnableViewState="false"></asp:Label>

        </div>
         
       <hr />
        <hr />
         <!---->
         <asp:CheckBox ID="chkDegree" Text="Degree" runat="server" />
         <asp:CheckBox ID="chkDiploma" Text="Diploma" runat="server" />
         <asp:Button ID="btnSubmitCollage" Text="Submit" runat="server" OnClick="btnSubmitCollage_Click"   />

          <br />
          <asp:CheckBox ID="chkSelectall" runat="server" AutoPostBack="true" Visible="false" Text="SelectAll    " OnCheckedChanged="chkSelectall_CheckedChanged" />

          <asp:Label ID="lblCollageDegree" runat="server"  Visible="False" EnableViewState="False" >
            <div>Select Degree Branch :</div>
            <asp:CheckBox runat="server" ID="chkComputer" Text="Computer Engineering - Degree"  /><br />
            <asp:CheckBox runat="server" ID="chkMechanical" Text="Mechanical Engineering - Degree"  /><br />
            <asp:CheckBox runat="server" ID="chkCivil" Text="Civil Engineering - Degree"  /><br />
            <asp:CheckBox runat="server" ID="chkElectrical" Text="Electrical Engineering - Degree"  /><br />
        </asp:Label>
        <asp:Label ID="lblCollageDiploma" runat="server" Visible="False" EnableViewState="False" >
            <div>Select Diploma Branch :</div>
            <asp:CheckBox runat="server" ID="chkComputerDiploma" Text="Computer Engineering - Diploma"  /><br />
            <asp:CheckBox runat="server" ID="chkMechanicalDiploma" Text="Mechanical Engineering - Diploma"  /><br />
            <asp:CheckBox runat="server" ID="chkCivilDiploma" Text="Civil Engineering - Diploma"  /><br />
            <asp:CheckBox runat="server" ID="chkElectricalDiploma" Text="Electrical Engineering - Diploma"  /><br />
        
        </asp:Label>
         <br />
         <asp:Button ID="btnSubmitBranch" Visible="false" runat="server" Text="Submit Branch" OnClick="btnSubmitBranch_Click" />
         <br />
         <asp:Label ID="lblSelectedBranch" runat="server" EnableViewState="false"></asp:Label>
        <!---->
      
    </form>
    </div>
    <h1 title="Darshan University">Darshan University</h1>
    <asp:Image ID="imgCollege" runat="server" ImageUrl="https://darshan.ac.in/Content/media/bg/bg_1.jpg" />
    
    
    <section id="about">
        <h2 title="About Darshan University">About Darshan University</h2>
        <div>
            Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).
        </div>
        <br />
        <div>
            From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.
        </div>
    </section>
    <section id="courses">
        <h2 title="Courses Offered by Darshan University"> Program Offered by Us</h2>
        <ul>
            <li>School of Computer Science</li>
                <ul>
                    <li>B.Tech (CSE)</li>
                    <li>M.Tech (Software)</li>
                    <li>Diploma (Computer)</li>
                    <li>BCA</li>
                    <li>MCA</li>
                    <li>B.Sc. (IT)</li>
                    <li>Ph.D. (Computer Science, CSE)</li>
                </ul>
             <li>School of Engineering</li>
                <ul>
                    <li>B.Tech (Civil, Mechanical, Electricle)</li>
                    <li>M.Tech (Structural,Thermal,Transport,Electricle)</li>
                    <li>Ph.D. (Civil, Mechanical)</li>
                </ul>
             <li>School of Diploma Engineering</li>
                <ul>
                    <li>BBA</li>
                    <li>MBA</li>
                    <li>B.Com. (IT)</li>
                    <li>Ph.D. (Computer Science)</li>
                </ul>
            <li>School of Management</li>
                <ul>
                    <li>BBA</li>
                    <li>MBA</li>
                    <li>B.Com.</li>
                    <li>Ph.D. (Management, Commerce)</li>
                </ul>
            <li>School of Applied Science</li>
                <ul>
                    <li>B.Sc. (Microbiology)</li>
                    <li>M.Sc. (Microbiology)</li>
                    <li>Ph.D. (Microbiology)</li>
                </ul>
        </ul>
    </section>
    
</body>
</html>
