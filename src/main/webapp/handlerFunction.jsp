<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핸들러 함수</title>

<script type="text/javascript">
	function checkFun() {
		
		if(document.gradeForm.book.value == ""){ // 빈칸검사
			alert( "추천 도서 이름은 필수 입력 사항입니다." );
		}else{
		
		alert("추천 도서 : " + document.gradeForm.book.value + "\n" + "평점 : " + document.gradeForm.grade.value )
		}
	}
</script>

</head>
<body>
	<h2> 추천 도서 평점 </h2>
	<hr>
	<form action="#" name="gradeForm">
		추천 도서 : <input type="text" name="book" size="30"><br><br>
		평점 :
		<hr>
		<input type="radio" name="grade" value="★★★★★">★★★★★ <br>
		<input type="radio" name="grade" value="★★★★☆">★★★★☆ <br>
		<input type="radio" name="grade" value="★★★☆☆">★★★☆☆ <br>
		<input type="radio" name="grade" value="★★☆☆☆">★★☆☆☆ <br>
		<input type="radio" name="grade" value="★☆☆☆☆">★☆☆☆☆ <br>
		<hr>
		<input type="submit" value="추천하기" onclick="checkFun()"> <!-- 버튼 누르는 이벤트 onclick -->
		<input type="reset" value="다시작성"> 
		
	</form>
</body>
</html>