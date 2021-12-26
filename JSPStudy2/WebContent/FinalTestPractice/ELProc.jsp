<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8"); //한글깨짐 방지!!

	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	//체크박스는 여러 개의 데이터가 선택될 수 있기 때문에, 테스트를 하나로 묶어서, 처리가(저장) 필요
	String[] hobby = request.getParameterValues("hobby");
	String hobbyText = "";
	for (int i=0; i<hobby.length;i++)
		hobbyText += hobby[i] + "";
	
	//session 저장 연습
	session.setAttribute("aaa", 1);
	
%>

name : <%=name %> <br>
email : <%=email %> <br>
hobby : <%=hobbyText %> <br>

id : <%=id%><br>
password : <%=pw%><br>

(EL 이용) <br>
<br>

name : ${param.name} <br>
email : ${param.email} <br>
hobby : ${paramValues.hobby[0]} ${paramValues.hobby[1]} ${paramValues.hobby[2]} <br>

id : ${param.id}<br>
password : ${param.pw}<br>

aaa값 : ${sessionScope.aaa}
</body>
</html>