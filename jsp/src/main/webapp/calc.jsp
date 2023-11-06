<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc.jsp</title>
</head>
<body>
	<h1>계산기</h1>
	<form action ="calcResult.jsp" method ="get">
		<input type="hidden" id="op" name="op">
		<table border="1">
			<tr>
				<td><input type="number" id="num1" name="num1"></td>
				
			
			</tr>
			<tr>
				<td><input type="number" id="num2" name="num2"></td>
			
			</tr>
			<tr>
				<td>
				<button type="button" onclick="send('add');" >+</button>
				<button type="button" onclick="send('sub');" >-</button>
				<button type="button" onclick="send('mul');" >*</button>
				<button type="button" onclick="send('div');" >/</button>
				<button type="button" onclick="send('mod');" >%</button>
			    </td>
				
			</tr>
		
		
		</table>
	</form>
<script>
	
	
	function send(op) {
		//var op ="add";
		var num1 = document.getElementById("num1").value;
		console.log("num1:", num1);
		var num2 = document.getElementById("num2").value;
		console.log("num2:", num2);
		
		if (num1 =="") {
			alert("첫번째 숫자를 입력해주세요.")
			return;
		}
		if(num2 =="") {
			alert("두번째 숫자를 입력해주세요.")
			return;
		}
	  	
		document.getElementById("op").value = op;
		
		document.forms[0].submit();
	
	}
</script>	

</body>
</html>