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

<center>
<h2> JSTL을 이용한 계산기 구현(EL 연습) </h2>
<hr>
<form action="CalcMain3.jsp" method="post">
<table height="60">
	<tr align="center">
		<td>
			<input type="text" name="exp1" value="${param.exp1}">
		</td>
		<td>
			<select name="exp2">
				<option value="+" <c:if test="${param.exp2 == '+'}"> selected </c:if> > + </option>
				<option value="-" <c:if test="${param.exp2 == '-'}"> selected </c:if> > - </option>
				<option value="*" <c:if test="${param.exp2 == '*'}"> selected </c:if> > * </option>
				<option value="/" <c:if test="${param.exp2 == '/'}"> selected </c:if> > / </option>
			</select>
		</td>
		<td>
		   <input type="text" name="exp3" value="${param.exp3}">
		</td>
		
		<td>
		   =
		</td>
		
		<td>
			<c:set var="exp2" value="${param.exp2}"/>
			
			<!-- 처음 들어오면, exp2 변수 null 있음 -->
			<c:if test="${exp2 == null}">
				<c:set var="exp2" value="+"/>
			</c:if>
			
			<c:if test="${exp2 == '+'}">
				<input type="text" value="${param.exp1 + param.exp3}">
			</c:if>
			<c:if test="${exp2 == '-'}">
				<input type="text" value="${param.exp1 - param.exp3}">
			</c:if>
			<c:if test="${exp2 == '*'}">
				<input type="text" value="${param.exp1 * param.exp3}">
			</c:if>
			<c:if test="${exp2 == '/'}">
				<input type="text" value="${param.exp1 / param.exp3}">
			</c:if>
		</td>
		
		<td>
		   <input type="submit" value="계산">
		</td>
	</tr>
	
</table>
</form>
</center>

</body>
</html>