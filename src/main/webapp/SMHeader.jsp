<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentManagementHeader</title>
<link rel="stylesheet" href="CSS.css">
<%String login=(String)session.getAttribute("login");%>
</head>
<body>

	<div class="NavBar">
        <div style="width: auto;">
            <a href="Home.jsp" title="Log-Out and go to Website">
                <img src="images/logo.png" height="65px" width="65px" style="padding-left: 5px; padding-top: 5px;">
            </a>
        </div>
        <div class="NavSpacer"></div>
		
		<%if(login!=null && login.equals("ADMIN")){%>
		<!-- 
		<div class="NavCourses">
        	Enquiry
            <ul class="NavDropCourse">
                <li><a id="NavA" href="EnquiryServlet?process=updateEnquiry">Update</a></li>
                <li><a id="NavA" href="EnquiryServlet?process=deleteEnquiry">Delete</a></li>
                <li><a id="NavA" href="EnquiryServlet?process=viewEnquiry">Show</a></li>
            </ul>
        </div>
        
		<div class="NavCourses">
        	Review
            <ul class="NavDropCourse">
                <li><a id="NavA" href="ReviewServlet?process=updateReview">Update</a></li>
                <li><a id="NavA" href="ReviewServlet?process=deleteReview">Delete</a></li>
                <li><a id="NavA" href="ReviewServlet?process=viewReview">Show</a></li>
            </ul>
        </div>
		-->
        <div class="NavCourses">
        	Courses
            <ul class="NavDropCourse">
                <li><a id="NavA" href="CourseServlet?process=addCourse">Add New</a></li>
                <li><a id="NavA" href="CourseServlet?process=updateCourse">Update</a></li>
                <li><a id="NavA" href="CourseServlet?process=deleteCourse">Delete</a></li>
                <li><a id="NavA" href="CourseServlet?process=viewCourse">Show</a></li><!-- Will then show table in CourseList.jsp which then will have UPDATE/DELETE next to it -->
            </ul>
        </div>
        
        <div class="NavCourses">
        	StudentDetails
            <ul class="NavDropCourse">
                <li><a id="NavA" href="StudentServlet?process=addStudent">Add New</a></li>
                <li><a id="NavA" href="StudentServlet?process=updateStudent">Update</a></li>
                <li><a id="NavA" href="StudentServlet?process=deleteStudent">Delete</a></li>
                <li><a id="NavA" href="StudentServlet?process=viewStudent">Show</a></li>
            </ul>
        </div>
        
        <div class="NavCourses">
        	StudentCourses
            <ul class="NavDropCourse">
                <li><a id="NavA" href="StudentServlet?process=addCourse">Add New</a></li>
                <li><a id="NavA" href="StudentServlet?process=updateCourse">Update</a></li>
                <li><a id="NavA" href="StudentServlet?process=deleteCourse">Delete</a></li>
                <li><a id="NavA" href="StudentServlet?process=viewCourse">Show</a></li>
            </ul>
        </div>
        
        <div class="NavCourses">
        	StudentEMI
            <ul class="NavDropCourse">
                <li><a id="NavA" href="StudentServlet?process=addEMI">Add New</a></li>
                <li><a id="NavA" href="StudentServlet?process=addEMI">Update</a></li>
                <li><a id="NavA" href="StudentServlet?process=addEMI">Delete</a></li>
                <li><a id="NavA" href="StudentServlet?process=addEMI">Show</a></li>
            </ul>
        </div>
        <%}%>
        
        <%if(login!=null && login.equals("STAFF")){%>
        <div class="NavCourses">
        	Courses
            <ul class="NavDropCourse">
                <li><a id="NavA" href="CourseServlet?process=viewCourse">Show</a></li>
            </ul>
        </div>
        
        <div class="NavCourses">
        	StudentDetails
            <ul class="NavDropCourse">
                <li><a id="NavA" href="StudentServlet?process=addStudent">Add New</a></li>
                <li><a id="NavA" href="StudentServlet?process=viewStudent">Show</a></li>
            </ul>
        </div>
        
        <div class="NavCourses">
        	StudentCourses
            <ul class="NavDropCourse">
                <li><a id="NavA" href="StudentServlet?process=addCourse">Add New</a></li>
                <li><a id="NavA" href="StudentServlet?process=viewCourse">Show</a></li>
            </ul>
        </div>
        
        <div class="NavCourses">
        	StudentEMI
            <ul class="NavDropCourse">
                <li><a id="NavA" href="StudentServlet?process=addEMI">Show</a></li>
            </ul>
        </div>
        <%}%>
        
    </div>

</body>
</html>