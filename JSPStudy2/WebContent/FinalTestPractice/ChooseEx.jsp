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
<form action="ChooseEx.jsp" method="post">
<select name="sel">
	<option ${param.sel=='-' ? 'selected' : ''}>-</option>
	<option ${param.sel=='a' ? 'selected' : ''}>a</option>
	<option ${param.sel=='b' ? 'selected' : ''}>b</option>
	<option ${param.sel=='c' ? 'selected' : ''}>c</option>
	<option ${param.sel=='d' ? 'selected' : ''}>d</option>
</select>
<input type="submit" value="선택"/>
</form>
<hr>
<c:choose>
	<c:when test="${param.sel == 'a'}">
	 a를 선택
	</c:when>
	<c:when test="${param.sel == 'b'}">
	 b를 선택
	</c:when>
	<c:when test="${param.sel == 'c'}">
	 c를 선택
	</c:when>
	<c:otherwise>
	 a,b,c 이외의 것을 선택
	</c:otherwise>
	
</c:choose>
</body>
</html>