<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="js/joinjs.js"></script>

<title>회원가입</title>



</head>
<body>
	<h2>회 원 가 입</h2>
	<hr>
	<form action="memberjoinOk.jsp" name="joinForm" method="post">
		아이디 :<br> <input type="text" name="mid"> <br>
		비밀번호 :<br> <input type="password" name="mpw"> <br>
		비밀번호 확인 :<br>  <input type="password" name="mpwCheck"> <br>
		이름 :<br> <input type="text" name="mname"> <br>
		이메일 :<br>  <input type="text" name="mmail"> <br>
		주소 :<br> <input type="text" name="maddr"> <br>
		<input type="button" value="회원가입" onclick="joinCheck()">
	</form>
</body>
</html>