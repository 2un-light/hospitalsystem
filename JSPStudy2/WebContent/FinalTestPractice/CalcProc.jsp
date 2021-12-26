<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2> 연산 결과 보기 </h2>
<hr>

<%
	String exp2 = request.getParameter("exp2");

	if(exp2.equals("+")){
%>
		결과는 ${param.exp1 + param.exp3} 입니다.
<% 
	}
	if(exp2.equals("-")){
%>

		결과는 ${param.exp1 - param.exp3} 입니다.
<% 
	}
	if(exp2.equals("*")){
%>
		결과는 ${param.exp1 * param.exp3} 입니다.

<% 
	}
	if(exp2.equals("/")){
%>
		결과는 ${param.exp1 / param.exp3} 입니다.
<%
		}
%>

</center>
</body>
</html>