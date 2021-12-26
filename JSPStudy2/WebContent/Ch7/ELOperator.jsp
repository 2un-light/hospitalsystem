<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("num1", 10);
	request.setAttribute("num2", -10);
%>

num1 + num2 = ${num1 + num2} <br>
num1 - num2 = ${num1 - num2} <br>
num1 > num2 = ${num1 > num2} <br>
(num1 > 0) && (num2 < 0) = ${(num1 > 0) && (num2 < 0)} <br>


</body>
</html>