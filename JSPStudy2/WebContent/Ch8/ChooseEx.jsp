<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> c:choose 연습 </h2>
<hr>
<form action="ChooseEx.jsp" method="post">
	<select name="sel">
		<option ${param.sel == '-' ? "selected":""}>-</option>
		<option ${param.sel == 'a' ? "selected":""}>a</option>
		<option ${param.sel == 'b' ? "selected":""}>b</option>
		<option ${param.sel == 'c' ? "selected":""}>c</option>
		<option ${param.sel == 'd' ? "selected":""}>d</option>
	</select>
	<input type="submit" value="선택"/>
</form>
<c:choose>
	<c:when test="${param.sel == 'a'}">
		a가 선택됨 <br>
	</c:when>
	<c:when test="${param.sel == 'b'}">
		b가 선택됨 <br>
	</c:when>
	<c:when test="${param.sel == 'c'}">
		c가 선택됨 <br>
	</c:when>
	<c:when test="${param.sel == 'd'}">
		d가 선택됨 <br>
	</c:when>
	<c:otherwise>
		a,b,c 이외의 것이 선택됨 <br>
	</c:otherwise>
</c:choose>
<hr>
</body>
</html>