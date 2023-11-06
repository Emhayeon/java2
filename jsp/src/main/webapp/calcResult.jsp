<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String op = request.getParameter("op");
	int iNum1 = Integer.parseInt(num1);
	int iNum2 = Integer.parseInt(num2);
	
	int result = 0;
	String sym ="";
	String opName = "";
	
	switch (op){
	case "add":
		result=iNum1+iNum2;
		sym="+";
		opName="덧셈";
		break;
	case "sub":
		result=iNum1-iNum2;
		sym="-";
		opName="뺄셈";
		break;
	case "mul":
		sym="*";
		opName="곱셈";
		result=iNum1*iNum2;
		break;
	case "div":
		sym="/";
		opName="나눗셈";
		result = iNum1 / iNum2;
		break;
	
	case "mod":
		sym="%";
		opName="나머지";
		result = iNum1 % iNum2;
		break;
	
	}
	
	
	
 %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calcResult.jsp</title>
</head>
<body>
	<table border="1">
		<tr>
			<th><%=opName %>결과</th>
		</tr>
		<tr>
			<td><%=num1%> <%=sym%> <%=num2%> = <%=result%></td>
		</tr>
	
	</table>

</body>
</html>