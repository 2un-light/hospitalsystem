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
	
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	out.println("name : " + name + "<br>");
	out.println("email : " + email + "<br>");
	
	// MySQL DB 연동 시작 !!
	String id = "root";
	String pass = "111111";
	//jdbc:mysql://localhost:3306/DB이름
	String url = "jdbc:mysql://localhost:3306/jspdb?characterEncoding=utf-8";
	
	Connection con = null; //DB연결
	PreparedStatement pstmt = null; //SQL 문 구성
	ResultSet rs = null; //SQL문 실행 결과 처리
	
	try{
		//드라이버 로드
		Class.forName("com.mysql.jdbc.Driver");
		
		//DB연결
		con = DriverManager.getConnection(url, id, pass);
		
		//SQL문 구성
		String sql = "insert into register values(?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		
		//SQL 실행
		pstmt.executeUpdate();
		
		out.println("데이터베이스 처리 완료");
		
		//연결 해제
		con.close();
		
		
	}catch(SQLException e){
		System.out.println(e);
	}
	%>
<h2> 저장된 이벤트 등록자 목록 </h2>
<hr>
<%
	try{
		//1. 데이터베이스 연결
		con = DriverManager.getConnection(url, id, pass);
		
		//2. SQL문 처리
		String sql = "select * from register";
		pstmt = con.prepareStatement(sql);
		
		//3. 실행
		rs = pstmt.executeQuery(); //SQL 처리결과 rs에 리턴
		int i = 1;
		
		while(rs.next()){
			out.println(i + "--> name : " + rs.getString(1)+
							"email : " + rs.getString(2) + "<br>");
			
			i++;
		}
	}catch(SQLException e){
		System.out.println(e);
	}

	con.close();
	pstmt.close();
	rs.close();
	


%>

</body>
</html>