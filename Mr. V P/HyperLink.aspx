<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HyperLink.aspx.cs" Inherits="HyperLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 id="h1HyperLinksimple" >HyperLink</h1>
        <div>
            <asp:HyperLink ID="hlDarshanUniversity"  ToolTip="Navigate to Darshan University" runat="server" Text="ClickHear" NavigateUrl="https://www.darshan.ac.in/"  ></asp:HyperLink>
            <br /><br /><br />
            <h1 id="h1HyperLinkSamePage" title="DemoToolTip" >HyperLinkSamePage</h1>
            <asp:HyperLink ID="hlAbout"  ToolTip=" Same page navigate Aboutus div" runat="server" Text="#about" NavigateUrl="~/HyperLink.aspx#h1About"  ></asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="hlContact"  ToolTip="Same page navigate contact div" runat="server" Text="#contact" NavigateUrl="~/HyperLink.aspx#h1Contact"  ></asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="hlAddress"  ToolTip="Same page navigate address div" runat="server" Text="#address" NavigateUrl="~/HyperLink.aspx#h1Address"  ></asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="hlDepartment"  ToolTip="Same page navigate dept div" runat="server" Text="#department" NavigateUrl="~/HyperLink.aspx#h1Department"  ></asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="hlStudentInfo"  ToolTip="Same page navigate student div" runat="server" Text="#studentInfo" NavigateUrl="~/HyperLink.aspx#h1StudentInfo"  ></asp:HyperLink>&nbsp;&nbsp;
            <br /><br /><br />
            <h1 id="h1Image" >imgTage</h1>
            <asp:Image ID="imgDarshanUniversity" ImageUrl="https://www.darshan.ac.in/U01/Page/31---18-06-2021-03-11-38.jpg" runat="server" />
            <br /><br /><br />
            <asp:Image ID="imgDarshanCollege" runat="server" ImageUrl="~/images/DU.png" Width="50%"/>
            <br /><br /><br />
            <asp:Image runat="server" ID="imgAltImage" AlternateText="ImgNotfound" />
        </div>

        <h1 id="about" title="About Darshan Universitys">AboutUS</h1>
        <asp:HyperLink runat="server" ToolTip="navigate to top of page" NavigateUrl="#h1HyperLinkSamePage">Go to Top</asp:HyperLink>
        <p>Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.</p>

        <h1 id="h1Contact" title="Contact Darshan Universitys">contact</h1>
        <asp:HyperLink runat="server" NavigateUrl="#h1HyperLinkSamePage">Go To Top</asp:HyperLink>

        <p>Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellenDarshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellenDarshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellen</p>

        <h1 id="h1Address" title="Address of Darshan Universitys">Address</h1>
        <asp:HyperLink runat="server" NavigateUrl="#h1HyperLinkSamePage">Go To Top</asp:HyperLink>

        <p>Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellenDarshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellenDarshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellen</p>

        <h1 id="h1Department" title="AllDepartmentList">dept</h1>
        <asp:HyperLink runat="server" NavigateUrl="#h1HyperLinkSamePage">Go To Top</asp:HyperLink>
        <p>Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellenDarshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellenDarshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.

Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.

Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellence in teaching, research, creative expression and service to the community.Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.
        </p>

        <h1 id="h1StudentInfo" title="AboutStudentinfo">StudentInfo</h1>
        <asp:HyperLink runat="server" NavigateUrl="#h1HyperLinkSamePage">Go To Top</asp:HyperLink>
Our Motto
Darshan University | Our Motto
This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.
    
Vision
To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.

Mission
Center of excellence for technical education.

Leadership in human & social development through technical education.

Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.

The prominent emblems of excellen
    </form>
    <asp:HyperLink runat="server" NavigateUrl="#h1HyperLinkSamePage">Go To Top</asp:HyperLink>
</body>
</html>
