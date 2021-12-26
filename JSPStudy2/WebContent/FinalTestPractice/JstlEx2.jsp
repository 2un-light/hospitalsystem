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
<c:forEach var="i" begin="1" end="6" step="${i+3}">
i : ${i} <br>
</c:forEach>



<c:forEach var="i" begin="1" end="3">
<c:set value="${3-i}" var="j"/>
	<c:forEach begin="${j+1}" end="3">
		&nbsp;&nbsp;
	</c:forEach>
	
	<c:forEach begin="1" end="${(j*2) + 1}">
		*
	</c:forEach>
	<br>
</c:forEach>


<hr>

<jsp:useBean id="product" class="product.Product"/>
<c:forEach var="prod" items="${product.getProductList()}" varStatus="prodStatus">
	<c:if test="${prodStatus.count % 2 == 0}">
	${prod} <br>
	count : ${prodStatus.count}<br>
	index : ${prodStatus.index}<br>
	</c:if>
</c:forEach>

<h2> c:forToken 연습 </h2>
<hr>
<c:set var="region" value="서울,대전,대구,부산,울산"/>
<c:forTokens var="item" items="${region}" delims=",">
[ 지역 : ${item} ]<br>
</c:forTokens>


</body>
</html>