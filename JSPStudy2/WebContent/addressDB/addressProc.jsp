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
<jsp:useBean id="aDo" class="addressDB.addressDo">
	<jsp:setProperty name="aDo" property="*"/>
</jsp:useBean>

<jsp:useBean id="aDao" class="addressDB.addressDao" scope="application" />
<%

	//체크박스는 여러 개의 데이터가 선택될 수 있기때문에, 텍스트를 하나로 묶어서, 처리가(저장) 필요
	String[] hobby = request.getParameterValues("hobby");
	String hobbyText = "";
	for (int i=0; i<hobby.length; i++)
		hobbyText += hobby[i] + "";
	
	aDo.setHobby(hobbyText); 

	aDao.InsertAddress(aDo);//jspdb 데이터베이스의 address 데이블에 입력값 저장.
%>

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
	</table>
<br>
<br>
<a href="addressList.jsp"> 전체 주소록 보기 </a>
</center>
</body>
</html>