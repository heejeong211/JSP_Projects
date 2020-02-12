<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html> <!-- 내가 한거, 답지는 cssTextAn.jsp임. -->
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			div {
				border:1px solid #cccccc;
				width:750px;
				height:400px;
				margin:0 auto;
				padding:5px;
			}
			p:nth-child(1) {
				font-size:2em;
				text-decoration:underline;
				font-height:100px;
				text-align:center;
				padding:10px;
			}
			p:nth-child(4) {
				text-align:right; /* 오른쪽 정렬 float 쓸 필요 없음. */
			}
			p:nth-last-child(1) {
				text-align:center;
				font-size:1.5em;
				line-height:100px;
				height:100px;
			}	
			a {
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
        	
        	<p><a href="http://sba.seoul.kr" target="_blank">서울산업진흥원</a></p>
    	</div>
	</body>
</html>