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
<h2> c:out 연습 </h2>
<hr>
<%
	request.setAttribute("i", 2);
%>
i : ${i}<br>
i : <c:out value="${i}"/> <br> 
j : <c:out value="${j}" escapeXml="false"><font color="red"> 10 </font></c:out> <br>
j : <c:out value="${j}" escapeXml="true"><font color="red"> 10 </font></c:out>
<hr>

<h2> c:set 연습 </h2>
<hr>
<c:set value="10" var="i"/>
<c:set value="20" var="j"/>
i(${i}) + j(${j}) = i + j(${i + j})


<jsp:useBean id="product" class="product.Product"/>
before -> product.num1 : ${product.num1} <br>

<c:set value="1000" target="${product}" property="num1"/>
after -> product.num1 : ${product.num1} <br>
<hr>


<h2> c:remove 연습 </h2>
<hr>
<c:set value="hello world" var="msg"/>
before remove : ${msg} <br>

<c:remove var="msg"/>
after remove : ${msg} <br>

<hr>

<h2> c:catch 연습 </h2>
<hr>

<c:catch var="errMsg">
	<%=5/0%>
</c:catch>
error msg : ${errMsg}
<hr>

<h2> c:if 연습 </h2>
<hr>
<c:set value="hong" var="user"/>
user : ${user} <br>

<c:if test="${user == 'hong'}" var="result">
result(true) : ${result}<br>
</c:if>

<hr>

</body>
</html>