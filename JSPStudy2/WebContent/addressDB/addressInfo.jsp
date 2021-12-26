<%@page import="addressDB.addressDo"%>
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
<jsp:useBean id="aDao" class="addressDB.addressDao" scope="application"/>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	addressDo aDo = aDao.getAdressOne(num);

%>

<center>
<h2> 선택한 주소록 보기 </h2>
<hr>

<table border = "1">
		<tr height="60" align="center"> 
			<td width="100"> 이름 </td>
			<td width="200"> <%= aDo.getName() %> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 전화번호 </td>
			<td width="200"> <%= aDo.getTel() %> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 이메일 </td>
			<td width="200"> <%= aDo.getEmail() %> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 성별 </td>
			<td width="200"> <%= aDo.getGender() %> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 취미 </td>
			<td width="200"> <%= aDo.getHobby() %> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td colspan="2">
				<input type="button" value="수정하기" 
				onclick="location.href='addressModify.jsp?num=<%=aDo.getNum()%>'">
			
				<input type="button" value="삭제하기" 
				onclick="location.href='addressDelete.jsp?num=<%=aDo.getNum()%>'">
			
				<input type="button" value="목록보기" 
				onclick="location.href='addressList.jsp'">
			</td>
		</tr>
</table>
</center>
</body>
</html>