<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		
		<style>
			input:focus { // input ���� ��Ҹ� Ŭ���� �����ؼ� �Է��ϴ� �����̳� ������ �ִ� ������ ��Ÿ�� ����.
				border:2px solid #ff0000;
				padding:10px
			}
			
			input:enabled { // Ȱ��ȭ
				color:#00ff00;
				font-weight:bold;
			}
			
			input:disable { // ��Ȱ��ȭ
				color:#ff0000;
			}
		</style>
		
	</head>
	<body>
		<div>
			<form>
			�̸�: <input type="text" name="uname"/><br />
			���̵�: <input type="text" name="uid"/><br />
			��й�ȣ: <input type="password" name="upw" value="12345" disabled="disabled"/><br />
			</form>
		</div>
	</body>
</html>