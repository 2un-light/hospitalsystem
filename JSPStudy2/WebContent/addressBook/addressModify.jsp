<%@page import="addressModel.addressBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="aDao" class="addressModel.addressDAO" scope="application"/>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	addressBean aBean = aDao.getAddressOne(num);

%>
<center>
<h2> 주소록 수정 </h2>
<hr>
<form action = "addressModifyProc.jsp" method="post">
	<table border = "1">
		<tr height="60" align="center"> 
			<td width="100"> 이름 </td>
			<td width="200"> 
			<input type="text" name="name" value="<%=aBean.getName()%>"> 
			</td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 전화번호 </td>
			<td width="200"> 
			<input type="text" name="tel" value="<%=aBean.getTel()%>"> 
			</td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 이메일 </td>
			<td width="200"> 
			<input type="text" name="email" value="<%=aBean.getEmail()%>"> 
			</td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 성별 </td>
			<td width="200"> 
			<input type="text" name="gender" value="<%=aBean.getGender()%>"> 
			</td>
		</tr>
		
		<tr height="60" align="center"> 
			<td colspan="2">
			<input type="hidden" name="num" value="<%= aBean.getNum() %>">	
			<input type="submit" value="수정하기">
			<input type="button" value="목록보기" 
			onclick="location.href='addressList.jsp'">
			</td>
			
		</tr>
		
	</table>
</form>
</center>

</body>
</html>