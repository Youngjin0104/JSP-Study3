<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form>
		아이디<input type="text" name="id" id="id">
		<input type="button" onclick="checkId()" value="중복검사">
		<p id="check"></p>
		비밀번호<input type="password" name="pw">
	</form>
</body>
<script>
	function checkId() {
		let id = document.getElementById("id").value;
		let p = document.getElementById("check");
		var xhr = new XMLHttpRequest();
		
		xhr.open("POST", "idcheck.jsp", true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.send("id=" + id);
		
		xhr.onreadystatechange = function() {
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
				var result = xhr.responseText.trim();
				console.log(result);
				if(xhr.responseText.trim() == '성공') {
					p.innerHTML = "사용 가능한 아이디입니다."
				} else {
					p.innerHTML = "중복된 아이디 입니다."
				}
			}
		}
		
	}
</script>
</html>