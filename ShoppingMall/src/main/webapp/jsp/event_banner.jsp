<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>슬라이드 연습</title>
<!--J-query  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!--css  -->
<link rel="stylesheet" href="css/bootstrap.css" >
<!--bootstrap  -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<!--js/event_banner.js  -->
<script type="text/javascript" src="js/event_banner.js?ver=1"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style media="screen">
* {
	margin: 0;
	padding: 0;
	z-index: 1;
}

.slide {
	width: 800px;
	height: 150px;
	overflow: hidden;
	position: relative;
	margin: 0 auto;
}

.slide ul {
	width: 5000px;
	position: absolute;
	top: 0;
	left: 0;
	font-size: 0;
}

.slide ul li {
	display: inline-block;
}

#back {
	position: absolute;
	top: 50px;
	left: 0;
	cursor: pointer;
	z-index: 2;
}

#next {
	position: absolute;
	top: 50px;
	right: 0;
	cursor: pointer;
	z-index: 2;
}
</style>
</head>
<body>
	<div class="slide">
		<img id="back" src="img/back.png" alt="" width="50">
		<ul>
			<li><img src="img/Thanos01.jpg" alt="" width="800" height="150"></li>
			<li><img src="img/Thanos02.jpg" alt="" width="800" height="150"></li>
			<li><img src="img/Thanos03.jpg" alt="" width="800" height="150"></li>
			<li><img src="img/Thanos04.jpg" alt="" width="800" height="150"></li>
		</ul>
		<img id="next" src="img/next.png" alt="" width="50">
	</div>
</body>
</html>
