<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		
		<style>
			input:focus { // input 같은 요소를 클릭해 선택해서 입력하는 동안이나 선택해 있는 동안의 스타일 지정.
				border:2px solid #ff0000;
				padding:10px
			}
			
			input:enabled { // 활성화
				color:#00ff00;
				font-weight:bold;
			}
			
			input:disable { // 비활성화
				color:#ff0000;
			}
		</style>
		
	</head>
	<body>
		<div>
			<form>
			이름: <input type="text" name="uname"/><br />
			아이디: <input type="text" name="uid"/><br />
			비밀번호: <input type="password" name="upw" value="12345" disabled="disabled"/><br />
			</form>
		</div>
	</body>
</html>