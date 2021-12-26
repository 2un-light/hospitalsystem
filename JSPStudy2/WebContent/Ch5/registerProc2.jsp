<%@page import="ch5.jdbcDo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 등록자 확인 화면 </h2>
<hr>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="jdo" class="ch5.jdbcDo">
	<jsp:setProperty name="jdo" property="*" />	
</jsp:useBean>

<jsp:useBean id="jdao" class="ch5.jdbcDao"/>

<%
	jdao.insertResister(jdo);

	ArrayList<jdbcDo> aList = jdao.getAllResister();
	
	for(int i=0; i < aList.size(); i++){
		jdbcDo jdo2 = aList.get(i);
		out.println(i + ", name : " + jdo2.getName() + ", email : " + jdo2.getEmail() + "<br>");
	}
%>

</body>
</html>