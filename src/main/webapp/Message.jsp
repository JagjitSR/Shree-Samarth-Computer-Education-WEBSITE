<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message Page</title>
<link rel="stylesheet" href="CSS.css">
<style>
.msg{
text-align: center ;
}
</style>
</head>
<body>

<div class="HomeCont"><div class="NoGrid">
<%
String msg=(String)session.getAttribute("success");
String errmsg=(String)session.getAttribute("failed");
if(msg!=null){%>
<h2 class="msg"><%=msg%></h2>
<%
session.removeAttribute("success");
}else if(errmsg!=null){%>
<h2 class="msg"><%=errmsg%></h2>	
<%
session.removeAttribute("failed");
}
%>
</div></div>

</body>
</html>