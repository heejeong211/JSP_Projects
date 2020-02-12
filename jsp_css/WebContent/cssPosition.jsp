<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			#contain{
				border:1px solid #cccccc;
				margin:0 auto;
				width:800px;
			}
			#header {
				height:50px;
				background-color:#cccccc;
			}
			#wrap {
				height:200px;
				position:relative; /* content에서 position:absolute 쓰기 위해서는 position:relative 해줘야 한다. */
			}
			#content1 {
				width:100px;
				height:100px;
				border:2px dashed green;
				background-color:red;
				position:absolute;
				top:0px;
				left:0px;
				margin:10px; /* margin 안쓰고 top과 left에 10px씩 줌. */
				
			}
			#content2 {
				width:100px;
				height:100px;
				border:2px dashed green;
				background-color:yellow;
				position:absolute;
				top:50px;
				left:50px;
				z-index:-1; /* 뒤로 숨기기, 숫자 높은 쪽이 위에 올라옴. */
			}
			#footer {
				height:50px;
				background-color:#cccccc;
			}
		</style>
	</head>
	<body>
		<div id="contain">
			<div id="header">HEADER</div>
			<div id="wrap">
				<div id="content1">content1</div>
				<div id="content2">content2</div>
			</div>
			<div id="footer">FOOTER</div>
		</div>
	</body>
</html>