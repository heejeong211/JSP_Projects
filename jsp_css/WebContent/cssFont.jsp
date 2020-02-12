<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			/* nav가 id니까 #해야 함. */
			#nav {
				border:1px solid #cccccc;
				width:800px;
				margin:0 auto; /* 가운데 정렬 */
				overflow:hidden; /* 집나간 자식 집에 데리고 들어오기..ㅎㅎ */
			}
			/* nav에 속한 div(menu들) */
			#nav div {
				width:150px;
				height:100px;
				float:left; /* 높이를 고려하지 않고 그냥 떠있기 때문에 부모 태그 안에 넣야함. 그래서 부모태그안에 overflow:hidden; 해줘야 함. */
				line-height:100px; /* font가운데 정렬 (세로정렬, 높이정렬), 글자와 글자사이의 행간, height와 line-height가 같은 값이면 가운데 정렬 */
				text-align:center; /* font가운데 정렬 (가로정렬, 넓이정렬) */
				font-size:1.5em;
				border-top:1px solid #cccccc;
				border-bottom:1px solid #cccccc;
				margin:5px; /* 위 아래 간격 5px */
			}
			a { /* 하이퍼링크 색 바꾸고 줄 없애기 */
				color:black;
				text-decoration:none;
			}
		</style>
	</head>
	<body> <!-- 바깥에 부모가 nav이고 자식들이 menu들이다. -->
		<div id="nav"> <!-- 메뉴만들 때는 nav(navigation) 사용 -->
			<div><a href="#">menu1</a></div>
			<div><a href="#">menu2</a></div>
			<div><a href="#">menu3</a></div>
			<div><a href="#">menu4</a></div>
			<div><a href="#">menu5</a></div>
		</div>
	</body>
</html>