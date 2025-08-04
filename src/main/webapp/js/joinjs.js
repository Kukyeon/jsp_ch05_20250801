/**
 * 
 */


function joinCheck(){
	
	// 선언, 변경가능
	var f = document.joinForm
	
	var cname = document.joinForm.mname.value;
	var cmail = document.joinForm.mmail.value;
	var cage = document.joinForm.mage.value;
	
	
	var regex1 = /^[가-힣]+$/; // 한글만 입력받는 정규표현식
	var regex2 = /^[A-Za-z0-9!@#$%^&*(),.?":{}|<>[\]\\/~`'=_+\-]+$/; // 영어,특수문자,숫자만 입력받는 정규표현식
	var regex3 = /^[0-9]+$/; // 숫자만 입력 받는 정규표현식 -> 숫자만으로 된 값이 들어오면 true
	var regex4 = /^[A-Za-z]+$/; // 영어만 입력받는 정규표현식
	
	
	if(document.joinForm.mid.value.length == 0){ //아이디가 빈칸으로 입력된경우.
		alert("아이디를 입력해주세요.");
		document.joinForm.mid.focus(); // 해당 입력위치로 커서이동
		return;
	}
	if(document.joinForm.mid.value.length < 4 || document.joinForm.mid.value.length > 15){ // 아이디 글자수 제한
				alert("아이디를 4자 이상 15자 이하 입력해주세요.");
				document.joinForm.mid.focus(); // 해당 입력위치로 커서이동
				return;
	}
	if(document.joinForm.mpw.value.length == 0){ //비밀번호가 빈칸으로 입력된경우.
			alert("비밀번호를 입력해주세요.");
			document.joinForm.mpw.focus(); // 해당 입력위치로 커서이동
			return;
	}
	if(document.joinForm.mpw.value.length < 4 || document.joinForm.mpw.value.length > 15){ // 비밀번호 글자수 제한
				alert("비밀번호를 4자 이상 15자 이하 입력해주세요.");
				document.joinForm.mpw.focus(); // 해당 입력위치로 커서이동
				return;
	}
	if(document.joinForm.mpwCheck.value.length == 0){ //비밀번호 확인이 빈칸으로 입력된경우.
				alert("비밀번호 확인을 입력해주세요.");
				document.joinForm.mpwCheck.focus(); // 해당 입력위치로 커서이동
				return;
	}
	if(document.joinForm.mpw.value != document.joinForm.mpwCheck.value){ 
					// 비밀번호 값과 비밀번호 확인 값이 같은지 확인
				alert("비밀번호와 비밀번호 확인이 일치하지않습니다.");
				document.joinForm.mpw.focus(); // 해당 입력위치로 커서이동
				return;
	}
	if(document.joinForm.mname.value.length == 0){ //이름이 빈칸으로 입력된경우.
				alert("이름을 입력해주세요.");
				document.joinForm.mname.focus(); // 해당 입력위치로 커서이동
				return;
	}
	if(!regex1.test(cname)){ //이름이 한긇이 아닌경우
				alert("이름은 한글로만 입력 해주세요.");
				document.joinForm.mname.focus(); // 해당 입력위치로 커서이동
				return;
	}
	if(document.joinForm.mmail.value.length == 0){ //이메일을 빈칸으로 입력된경우.
				alert("이메일을 입력해주세요.");
				document.joinForm.mmail.focus(); // 해당 입력위치로 커서이동
				return;
	}
	if(!regex2.test(cmail)){ //이메일에 영어,특수문자 확인하는경우.
				alert("이메일은 영어로 입력해주세요.");
				document.joinForm.mmail.focus(); // 해당 입력위치로 커서이동
				return;
		}
	if(document.joinForm.mage.value.length == 0){ //이메일을 빈칸으로 입력된경우.
				alert("나이를 입력해주세요.");
				document.joinForm.mmail.focus(); // 해당 입력위치로 커서이동
				return;	
	}
	if(!regex3.test(cage)){ //이메일에 영어,특수문자 확인하는경우.
					alert("나이를 입력해주세요.");
					document.joinForm.mage.focus(); // 해당 입력위치로 커서이동
					return;
	}
							
	document.joinForm.submit();
}