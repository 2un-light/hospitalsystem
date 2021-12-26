<%@page import="addressModel.addressBean"%>
<%@page import="java.util.ArrayList"%>
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
	ArrayList<addressBean> v = aDao.getAllAddr();
%>
<center>
<h2> 전체 주소록 보기 </h2>
<hr>
<a href="addressForm.jsp">새로운 주소록 추가하기</a>
<hr>

<table border="1">
	<tr height="60" align="center">
		<td width="150"> 이름 </td>
		<td width="150"> 전화번호 </td>
		<td width="150"> 이메일 </td>
		<td width="150"> 성별 </td>
	</tr>
	
<%
for(int i=0; i< v.size(); i++)
{
	addressBean aBean = v.get(i);
%>
	<tr height="60" align="center">
		<td width="150"> <a href="addressInfo.jsp?num=<%=aBean.getNum()%>"><%= aBean.getName() %></a></td>
		<td width="150"> <%= aBean.getTel() %> </td>
		<td width="150"> <%= aBean.getEmail() %> </td>
		<td width="150"> <%= aBean.getGender() %> </td>
	</tr>	
<%
}

%>
</table>
</center>
</body>
</html>