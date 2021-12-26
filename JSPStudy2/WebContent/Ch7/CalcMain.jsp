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
<h2> EL을 이용한 계산기 구현(EL 연습) </h2>
<hr>
<form action="CalcProc.jsp" method="post">
<table height="60">
	<tr align="center">
		<td>
			<input type="text" name="exp1">
		</td>
		<td>
			<select name="exp2">
				<option value="+"> + </option>
				<option value="-"> - </option>
				<option value="*"> * </option>
				<option value="/"> / </option>
			</select>
		</td>
		<td>
		   <input type="text" name="exp3">
		</td>
		<td>
		   <input type="submit" value="계산">
		</td>
	</tr>
	
</table>
</form>
</center>

</body>
</html>