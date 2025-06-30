<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="CSS.css">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
	rel="stylesheet">
<style>
.marquee-container {
	width: 100%;
	overflow: hidden;
	box-sizing: border-box;
	animation: scroll-left 30s linear infinite;
	display: flex;
	gap: 20px;
}

@
keyframes scroll-left { 0% {
	transform: translateX(100%);
}
100


%
{
transform


:


translateX
(


-100
%


)
;


}
}
</style>
</head>
<body>

	<jsp:include page="Header.jsp"></jsp:include>
	<div class="HomeCont">
		<div class="LeftGrid">
			<div class="gridText">
				<h2>
					Welcome to <b>Shree Samarth Computer Education</b> Empowering Your
					Digital Future!
				</h2>
				<p>Unlock the power of technology with our expert-led computer
					courses. At Shree Samarth, we are dedicated to providing
					top-quality computer education for learners of all ages and skill
					levels.</p>
			</div>
			<div class="gridImage">
				<img src="images/sample.png" height="250px" width="250px">
			</div>
		</div>
	</div>
	<div class="HomeCont">
		<div class="RightGrid">
			<div class="gridImage">
				<img src="images/sample.png" height="250px" width="250px">
			</div>
			<div class="gridText">
				<h2>Why Choose Us?</h2>
				<p>
					<b>Expert Instructors:</b> Learn from industry-certified
					professionals with real-world experience.<br> <b>Comprehensive
						Curriculum:</b> Master everything from basic computer skills to
					advanced programming and software development.<br> <b>Flexible
						Learning Options:</b> Choose from in-person, online, or hybrid classes
					tailored to your schedule.<br> <b>State-of-the-Art
						Facilities:</b> Get hands-on experience with the latest technology and
					software tools.<br> <b>Personalized Attention:</b> Small class
					sizes ensure individual support and guidance.<br>
				</p>
			</div>
		</div>
	</div>
	<div class="HomeCont">
		<div class="LeftGrid">
			<div class="gridText">
				<h2>Our Popular Courses</h2>
				<p>
					<b>Basic Computer Skills:</b> Perfect for beginners to get started
					with computers, internet, and productivity software.<br> <b>Programming
						Languages:</b> Learn Python, Java, C++, and more to kickstart your
					coding journey.<br> <b>Web Development:</b> Build stunning
					websites with HTML, CSS, JavaScript, and frameworks.<br> <b>Graphic
						Design:</b> Master tools like Photoshop, Illustrator, and Canva to
					unleash your creativity.<br> <b>Career-Oriented Training:</b>
					Specialized courses in IT certifications like AWS, CCNA, and more.<br>
				</p>
			</div>
			<div class="gridImage">
				<img src="images/sample.png" height="250px" width="250px">
			</div>
		</div>
	</div>
	<div class="HomeContBottom">
		<div class="NoGrid">
			<c:import url="ReviewServlet?process=goodReviews" />
		</div>
	</div>

	<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>