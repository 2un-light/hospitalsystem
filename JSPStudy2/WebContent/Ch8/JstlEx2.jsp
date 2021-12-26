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

<h2> c:forEach 연습 </h2>
<hr>
<c:forEach var="i" begin="1" end="4" step="${i+3}">
	i : ${i} <br>
</c:forEach>
<hr>

<c:forEach var="i" begin="0" end="3">
	<c:forEach begin="${i + 1}" end="3">
		&nbsp;&nbsp;
	</c:forEach>
	<c:forEach begin="1" end="${(i * 2)+ 1}">
		*
	</c:forEach>
	<br>
</c:forEach>

<hr>

<jsp:useBean id="product" class="product.Product"/>

<c:forEach var="item" items="${product.getProductList()}" varStatus="prodStatus">
	<!-- count를 짝수인 것만 출력하기 -->
	<c:if test="${prodStatus.count % 2 == 0}">
		item : ${item}<br>
		count : ${prodStatus.count} <br>
		index : ${prodStatus.index} <br>
	</c:if>
</c:forEach>

<hr>

<h2> c:forToken 연습 </h2>
<hr>
<c:set var="region" value="서울, 대전, 대구, 부산, 울산"/>

<c:forTokens var="item" items="${region}" delims=",">
	지역 : ${item}<br>
</c:forTokens>
<hr>

<h2> c:import 연습 </h2>
<hr>

<c:import url="https://www.naver.com" var="urlData"/>
<c:out value="${urlData}" escapeXml="false"/>

<hr>


</body>
</html>