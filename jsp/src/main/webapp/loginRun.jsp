<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginRun.jsp</title>   
<%
	//요청에 대한 처리해야함(id/pW)
	String id = request.getParameter("id");//id에 입력한값
	String pw = request.getParameter("pw");//pw에 입력한값
	String age = request.getParameter("age");//age는 문자열로 간주
	int iAge = Integer.parseInt(age); // age문자열을 정수로 변환
	//데이터베이스에서 얻어온 데이터라고 가정
	String did = "hong";
	String dpw = "1234";
	
	//자바에서의 문자열 비교는 == 가 아니고 .equals()사용함
	
	String result = "";
	
	if(id.equals(did) && pw.equals(dpw)) {
		result = "로그인 성공";
%>
		<script>
			//location.href = "loginSuccess.jsp"
			location.replace("loginSuccess.jsp");
		</script>
<%
	} else {
		result = "로그인 실패";
%>
		<script>
			//location.href = "loginFail.jsp";
			location.replace("loginFail.jsp");
		</script>
		
		
<%
		
	}
%>    
	
    

</head>
<body>
	<h1><%= result %></h1>
	<h2>내년에는<%= iAge + 1 %>살이 됩니다.</h2>
</body>
</html>