<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			/* nav�� id�ϱ� #�ؾ� ��. */
			#nav {
				border:1px solid #cccccc;
				width:800px;
				margin:0 auto; /* ��� ���� */
				overflow:hidden; /* ������ �ڽ� ���� ������ ������..���� */
			}
			/* nav�� ���� div(menu��) */
			#nav div {
				width:150px;
				height:100px;
				float:left; /* ���̸� ������� �ʰ� �׳� ���ֱ� ������ �θ� �±� �ȿ� �־���. �׷��� �θ��±׾ȿ� overflow:hidden; ����� ��. */
				line-height:100px; /* font��� ���� (��������, ��������), ���ڿ� ���ڻ����� �ణ, height�� line-height�� ���� ���̸� ��� ���� */
				text-align:center; /* font��� ���� (��������, ��������) */
				font-size:1.5em;
				border-top:1px solid #cccccc;
				border-bottom:1px solid #cccccc;
				margin:5px; /* �� �Ʒ� ���� 5px */
			}
			a { /* �����۸�ũ �� �ٲٰ� �� ���ֱ� */
				color:black;
				text-decoration:none;
			}
		</style>
	</head>
	<body> <!-- �ٱ��� �θ� nav�̰� �ڽĵ��� menu���̴�. -->
		<div id="nav"> <!-- �޴����� ���� nav(navigation) ��� -->
			<div><a href="#">menu1</a></div>
			<div><a href="#">menu2</a></div>
			<div><a href="#">menu3</a></div>
			<div><a href="#">menu4</a></div>
			<div><a href="#">menu5</a></div>
		</div>
	</body>
</html>