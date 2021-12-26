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
<h2> 상품목록 (EL 이용)</h2>
<hr>

<form action="ProductSel.jsp" method="post">

<table>
	<tr>
		<td>
			<jsp:useBean id="product" class="product.Product" scope="application"/> 
			<select name="sel">
				<c:forEach var="item" items="${product.getProductList()}">
					<option> ${item} </option>
				</c:forEach>
			</select>
		</td>
		<td>
			<input type="submit" value="선택"/>
		</td>
	
	</tr>
</table>

</form>
</body>
</center>
</html>