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
<h2> 주소록 등록 정보 </h2>
<hr>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="aBean" class="addressModel.addressBean">
	<jsp:setProperty name="aBean" property="*"/>
</jsp:useBean>

<jsp:useBean id="aDao" class="addressModel.addressDAO" scope="application" />
<%
	aDao.insertAddr(aBean);
%>

<table border = "1">
		<tr height="60" align="center"> 
			<td width="100"> 이름 </td>
			<td width="200"> <%= aBean.getName() %> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 전화번호 </td>
			<td width="200"> <%= aBean.getTel() %> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 이메일 </td>
			<td width="200"> <%= aBean.getEmail() %> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 성별 </td>
			<td width="200"> <%= aBean.getGender() %> </td>
		</tr>
	</table>
<br>
<br>
<a href="addressList.jsp"> 전체 주소록 보기 </a>
</center>
</body>
</html>