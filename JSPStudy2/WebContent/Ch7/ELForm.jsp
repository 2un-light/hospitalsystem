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
<h2> 이벤트 등록(EL 연습) </h2>
<hr>
<form action="ELProc.jsp" method="post">
<table height="60">
	<tr align="center">
		<td>
			등록이름 : <input type="text" name="name">
		</td>
		<td>
			이메일 : <input type="text" name="email">
		</td>
		<td>
		   <input type="submit" name="등록">
		</td>
	</tr>
	
	<tr height="60" align="center"> 
			<td> 취미 </td>
			<td> 
				<input type ="checkbox" name="hobby" value="걷기">걷기
				<input type ="checkbox" name="hobby" value="숨쉬기">숨쉬기
				<input type ="checkbox" name="hobby" value="잠자기">잠자기
			</td>
	</tr>

</table>
</form>
</center>

</body>
</html>