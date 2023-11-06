<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String user_id = request.getParameter("userid");
	String user_pw = request.getParameter("userpw");
	
	if(user_id.equals("java")&& user_pw.equals("1234")){
%>
<script>
	location.href="success.html"
</script>
<%
	}else{
%>
<script>
	location.href="fail.html"
</script>
<%
	}
%>
</body>
</html>