<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function scoreFun() {
			
			if (document.scoreform.kor.value === "" || document.scoreform.eng.value === "" || document.scoreform.math.value === ""){
				alert("빈칸을 다 채워주세요");
				return false;
			}
			
			return true;
		}
	
	
		
	
	
	</script>





</head>
<body>
	<form action="scoreOk.jsp" name="scoreform" onsubmit="return scoreFun()">
			국어 : <input type="text" name="kor"><br><br>
			영어 : <input type="text" name="eng"><br><br>
			수학 : <input type="text" name="math"><br><br>
			
			<input type="submit" value="점수확인" >
	 		<input type="reset" value="취소">
		</form>



</body>
</html>