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
				margin:0 auto; /* border 가운데 정렬 */
				overflow:hidden; /* 이게 왜 들어갈까? div에 들어가는 내용물을 고정시키기 위해서? 약간 관습? 습관? 같은거임. */
				padding:10px;
           		box-sizing:border-box; /* 테두리를 기준으로 크기를 정함. */
			}
			div p:nth-child(1) {
				font-size:2em;
				text-decoration:underline;
				height:100px; /* p태그에 대한 높이를 준 것임. */
				font-height:100px;
				text-align:center; /* 가운데 정렬 */
				padding:10px;
			}
			div p:nth-child(2) {
				font-size:1.2em;
         		text-align:left; /* 왼쪽 정렬 */
			}
			div p:nth-child(4) {
				font-size:1.2em;
				text-align:right; /* 오른쪽 정렬 float 쓸 필요 없음. */
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
        	
        	<p><a href="http://sba.seoul.kr" target="_blank">서울산업진흥원</a></p>
    	</div>
	</body>
</html>