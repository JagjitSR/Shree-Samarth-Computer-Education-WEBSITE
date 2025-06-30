<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="CSS.css">
</head>
<body>

	<div class="NavBar">
        <div style="width: auto;">
            <a href="LoginPage.jsp" title="Go To StudentManagement">
                <img src="images/logo.png" height="65px" width="65px" style="padding-left: 5px; padding-top: 5px;">
            </a>
        </div>
        <div class="NavSpacer"></div>
        <div class="NavHome"><a id="NavA" href="Home.jsp">Home</a></div>

        <div class="NavCourses">
        	Courses
            <ul class="NavDropCourse">
                <li><a id="NavA" href="MS-Office.jsp">MS-Office</a></li>
                <li><a id="NavA" href="MS-CIT.jsp">MS-CIT</a></li>
                <li><a id="NavA" href="Tally.jsp">Tally Prime + GST</a></li>
                <li><a id="NavA" href="Excel.jsp">Advance Excel</a></li>
                <li><a id="NavA" href="Typing.jsp">Typing</a></li>
                <li><a id="NavA" href="https://klic.mkcl.org/klic-courses" target="_blank">MKCL KLiC Courses</a></li>
            </ul>
        </div>
        
        <div class="NavEnquiry"><a id="NavA" href="Enquiry.jsp">Enquiry</a></div>
        <div class="NavAbout"><a id="NavA" href="About.jsp">About</a></div>
        <div class="NavContact"><a id="NavA" href="Contact.jsp">Contact</a></div>
        <div class="NavReview"><a id="NavA" href="Review.jsp">Review us</a></div>
    </div>

</body>
</html>