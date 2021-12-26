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
<h2> c:out 연습</h2>
<hr>
<%
	request.setAttribute("i", 2);
%>
i : ${i} <br>
i : <c:out value="${i}"/> <br>
j : <c:out value="${j}" escapeXml="false"><font color="red">5</font></c:out> <br>
j : <c:out value="${j}" escapeXml="true"><font color="red">5</font></c:out> <br>
<hr>

<h2> c:set 연습 </h2>
<hr>
<c:set value="10" var="i"/>
<c:set value="20" var="j"/>
i(${i}) + j(${j}) = i+j(${i + j}) <br>

<jsp:useBean id="product" class="product.Product"/>
before -> product.num1 : ${product.num1} <br>
before -> product.num2 : ${product.num2} <br>

<c:set value="1000" target="${product}" property="num1"/>
after -> product.num1 : ${product.num1} <br>


<c:set value="2000" target="${product}" property="num2"/>
after -> product.num2 : ${product.num2}<br>
<hr>

<h2> c:remove 연습 </h2>
<hr>
<c:set value="Hello world!!" var="msg"/>
before remove : ${msg} <br>

<c:remove var="msg"/>
after remove : ${msg} <br>

<h2> c:catch 연습 </h2>
<hr>
<c:catch var="errMsg">
	<%=5/0 %>
</c:catch>
error message : ${errMsg}
<hr>

<h2> c:if 연습 </h2>
<hr>
<c:set value="hong" var="user"/>
<c:if test="${user == 'hong'}" var="result">
	result(true) : ${result}<br>
</c:if>
<hr>

<h2> c:if연습 2</h2>
<c:set value="hong" var="user"/>
user : ${user}<br>

<c:if test="${user == 'hong'}" var="result"/>
result : ${result}<br>

<c:if test="${user == 'gil'}" var="result"/>
result : ${result}<br>


</body>
</html>