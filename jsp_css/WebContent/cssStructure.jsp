<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		
		<!-- list-style:none; 점 없애는 것  -->
		<!-- nth-child(2n+1) nth 서수(first...) -->
		<!-- border-radius:10px 10px 0 0; 왼쪽 위부터 시계방향을 둥굴게 하는 것 -->
		
		<style>
			#content {
				width:300px;
			}
			
			ul li {
				list-style:none;
				border:1px solid #cccccc;
				padding:10px;
				background-color:#d3d3d3;
				font-wight:bold;
				font-size:20px;
			}
			
			ul li a {
				color:#000000;
			}
			
			ul li:nth-child(2n+1) { 
				background-color:#87ceeb;
			}
			
			ul li:first-child, ul li:last-child {
				background-color:#f3b9cd;
			}
			
			ul li:first-child {
				border-radius:10px 10px 0 0; 
			}
			
			ul li:last-child {
				border-radius:0 0 10px 10px;
			}
		</style>
		
	</head>
	<body>
		<div>
			<ul>
				<li><a href="#">menu1</a></li>
				<li><a href="#">menu2</a></li>
				<li><a href="#">menu3</a></li>
				<li><a href="#">menu4</a></li>
				<li><a href="#">menu5</a></li>
				<li><a href="#">menu6</a></li>
				<li><a href="#">menu7</a></li>
				<li><a href="#">menu8</a></li>
			</ul>
		</div>
	</body>
</html>