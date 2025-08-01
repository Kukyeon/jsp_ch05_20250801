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
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		
		int Kor = Integer.parseInt(kor);
		int Eng = Integer.parseInt(eng);
		int Math = Integer.parseInt(math);
		
		double score;
		
		score = (Kor + Eng + Math) / 3;
			out.print("평균점수 : " + score);
	
	
	%>
</body>
</html>