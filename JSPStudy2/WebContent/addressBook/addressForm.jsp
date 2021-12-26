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
<h2> 주소록 등록 </h2>
<hr>

<form action = "addressProc.jsp" method="post">
	<table border = "1">
		<tr height="60" align="center"> 
			<td width="100"> 이름 </td>
			<td width="200"> <input type="text" name="name"> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 전화번호 </td>
			<td width="200"> <input type="text" name="tel"> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 이메일 </td>
			<td width="200"> <input type="text" name="email"> </td>
		</tr>
		
		<tr height="60" align="center"> 
			<td width="100"> 성별 </td>
			<td width="200"> 
			<select name="gender">
				<option value="남자"> 남자 </option>
				<option value="여자"> 여자 </option>
			</select>
			</td>
		</tr>
		
		<tr height="60" align="center"> 
			<td colspan="2">	
			<input type="submit" value="확인">
			<input type="reset" value="취소">		
			</td>
			
		</tr>
		
	</table>
</form>

</center>

</body>
</html>