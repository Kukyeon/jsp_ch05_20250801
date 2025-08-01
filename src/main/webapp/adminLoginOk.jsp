<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String memberid = request.getParameter("loginid");
	
		String memberpw = request.getParameter("loginpw");
		
		String adminId = "admin";
	    String adminPw = "1234";
				
		
		if (memberid == null || memberpw == null || memberid.trim().equals("") || memberpw.trim().equals("")) {
	        out.println("<p>아이디 또는 비밀번호가 입력되지 않았습니다.</p>");
	    } else if (memberid.equals(adminId) && memberpw.equals(adminPw)) {
	        out.println("<p>안녕하세요 관리자님. 로그인 성공하셨습니다.</p>");
	    } else {
	        out.println("<p>관리자님 로그인에 실패하였습니다.</p>");
	    }
	%>
	
	
		
</body>
</html>