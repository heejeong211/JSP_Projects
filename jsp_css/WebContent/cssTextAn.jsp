<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			div {
				border:1px solid #cccccc;
				width:800px;
				margin:0 auto; /* border ��� ���� */
				overflow:hidden; /* �̰� �� ����? div�� ���� ���빰�� ������Ű�� ���ؼ�? �ణ ����? ����? ��������. */
				padding:10px;
           		box-sizing:border-box; /* �׵θ��� �������� ũ�⸦ ����. */
			}
			div p:nth-child(1) {
				font-size:2em;
				text-decoration:underline;
				height:100px; /* p�±׿� ���� ���̸� �� ����. */
				font-height:100px;
				text-align:center; /* ��� ���� */
				padding:10px;
			}
			div p:nth-child(2) {
				font-size:1.2em;
         		text-align:left; /* ���� ���� */
			}
			div p:nth-child(4) {
				font-size:1.2em;
				text-align:right; /* ������ ���� float �� �ʿ� ����. */
			}
			div p:nth-child(6) {
				height:50px;
				line-height:50px;
				text-align:center;
				font-size:1.5em;
			}	
			div p:nth-child(6) a {
				text-decoration:none;
			}
		</style>
	</head>
	<body>
		<div>
        	<p>HTML5, CSS3 Document</p>
        	<p>To. all member</p>
        	<p>html5, CSS3 study is very easy html5, CSS3 study is very easy html5, CSS3 study is very easy</p>
        	<p>From. SBA</p>
        	
        	<hr />
        	
        	<p><a href="http://sba.seoul.kr" target="_blank">�����������</a></p>
    	</div>
	</body>
</html>