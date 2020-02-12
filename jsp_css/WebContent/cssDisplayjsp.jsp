<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			div {
				width:100px;
				height:100px;
				color:#ffffff;
				font-weight:bold;
				text-align:center;
			}
			#a, #d {
				background-color:#ff0000;
			}
			
			#b, #f, #i {
				background-color:#7fff00;
			}
			
			#c, #e, #h {
				background-color:#0000cd;
			}
			
			#e, #f, #h {
				display:inline;
			}
			
			#g {
				display:none;
			}
			
			#i {
				display:inline-block;
			}
		</style>
	</head>
	<body>
		<div id="a">
			content1
		</div>
		<div id="b">
			content2
		</div>
		<div id="c">
			content3
		</div>
		<div id="d">
			content4
		</div>
		<div id="e">
			content5
		</div>
		<div id="f">
			content6
		</div>
		<div id="g">
			content7
		</div>
		<div id="h">
			content8
		</div>
		<div id="i">
			content9
		</div>
	</body>
</html>