<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentManagement Login</title>
<link rel="stylesheet" href="CSS.css">
<%String login=(String)session.getAttribute("login");%>
<style>
.form-container {
	flex-grow: 1;
	display: flex;
	justify-content: center;
	align-items: center;
	padding-top: 5px;
}

form {
	background: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
	max-width: 500px;
	width: 100%;
}

form h1 {
	text-align: center;
	color: #f53675;
	margin-bottom: 25px;
}

label {
	color: orange;
	font-weight: 600;
	display: block;
	margin-top: 15px;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 6px;
	box-sizing: border-box;
}

.divider {
	text-align: center;
	margin: 25px 0;
	font-weight: bold;
	color: rgb(245, 54, 117);
}

.btn-submit {
	margin-top: 25px;
	width: 100%;
	padding: 12px;
	background-color: rgb(245, 54, 117);
	border: none;
	border-radius: 6px;
	color: white;
	font-size: 1rem;
	cursor: pointer;
	transition: background-color 0.3s;
}

.btn-submit:hover {
	background-color: #c9326b;
}
</style>
</head>
<body>

	<jsp:include page="SMHeader.jsp" />

	<div class="NoGrid"><jsp:include page="Message.jsp"/></div>
	<%if(login==null){%>
	<div class="form-container">
		<form action="LoginServlet?process=logIn" method="post">
			<h1>Login</h1>
			<label for="username">Username:</label>
			<input type="text" id="username" name="username"> 
			<label for="password">Password:</label>
			<input type="text" id="password" name="password">
			<div class="divider">OR</div>
			<label for="studentId">Student ID:</label> 
			<input type="text" id="studentId" name="studentId">
			<button type="submit" class="btn-submit">Login</button>
		</form>
	</div>
	<%}%>
	<%if(login!=null){%>
	<div class="form-container">
	<form action="LoginServlet?process=logOut" method="post">
    		<button type="submit" class="btn-submit">Logout</button>
	</form>
	</div>
	<%}%>
	<jsp:include page="Footer.jsp" />

</body>
</html>