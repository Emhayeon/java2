<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
<script src="js/jquery.js"></script>
<script>
$(function(){
	function checkForm() {
		var id = $("#id").val();
		var pw = $("#pw").val();
		var age = $("#age").val();
		
		if (id == "") {
			$("#divMsg").text("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		}
		
		if (pw == "") {
			$("#divMsg").text("비밀번호를 입력해주세요.");
			$("#pw").focus();
			return false;
		}
		
		if (age == "") {
			$("#divMsg").text("나이를 입력해주세요.");
			$("#age").focus();
			return false;
		}
		
		//document.getElementById("secret").value = "hate";
		//$("#secret").val("hate");
		//document.forms[0].submit(); 
		
		return false;
	}
	
	$("#myForm").submit(checkForm);
	
});
</script>
</head>
<body>
	<h1>로그인 폼</h1>
	<!-- action:폼의 내용을 전송할 페이지 -->
	<!-- method: 요청방식,기본값:get -->
	<form action="loginRun.jsp" method="get" id="myForm">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" id="id" name="id"></td>
			</tr>	
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="pw" name="pw"></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="number" id="age" name="age"></td>
			</tr>
			<tr>
				<td><button type="submit">로그인</button></td>
				<td><button type="reset">다시작성</button></td>
			</tr>	
		</table>
	
	</form>
	
	<div id="divMsg"></div>
<script>

</script>
</body>
</html>