<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript">
function adminFun() {
	var id = document.adminform.loginid.value.trim();
    var pw = document.adminform.loginpw.value.trim();

    if (id === "" || pw === "") {
        alert("아이디와 비밀번호를 모두 입력해주세요.");
        return false;
    }

    // 통과하면 form 제출
    return true;
}
    
</script>


</head>
<body>
	<form action="adminLoginOk.jsp" name="adminform" onsubmit="retrun adminFun()">
		아이디 : <br> <input type="text" name="loginid"><br><br>
		비밀번호 : <br> <input type="password" name="loginpw" ><br><br>
		<input type="submit" value="로그인" >
 		<input type="reset" value="취소">
	</form>
</body>
</html>