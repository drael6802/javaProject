<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메인메뉴</title>
<!--J-query  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!--css  -->
<link rel="stylesheet" href="css/bootstrap.css" >
<!--bootstrap  -->
<script type="text/javascript">
$(function() {
	$(".dropmenu ul li").hover(function() {
		$(this).find("ul").stop().fadeToggle(300);
	});
});

</script>
<style media="screen">
* {
	margin: 0;
	padding: 0;
}

header {
	min-width: 300px;
	height: 80px;
	background-color: #15a181;
	font-size: 30px;
	color: white;
	position: relative;
}

header p {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translateX(-50%) translateY(-50%);
}

#dm_ul {
	min-width: 300px;
	background-color: #15a181;
	text-align: center;
}

.dropmenu ul ul {
	position: absolute;
	display: none;
	z-index: 2;
}

.dropmenu ul ul li {
	display: block;
	background-color: #15a181;
	color: white;
}

.dropmenu ul li {
	display: inline-block;
	margin-left: -5.5px;
}

.dropmenu ul li a {
	display: block;
	width: 150px;
	color: white;
	line-height: 43px;
	text-decoration: none;
}

.dropmenu ul li a:hover {
	background-color: #15a181;
	color: gray;
}
</style>
</head>
<body>
	<section>
		<div class="dropmenu">
			<ul id="dm_ul">
				<li><span class="openmenu" onclick='openNav()'> open</span></li>
				<li><a href="mainTemplate.do">메인폼</a></li>
				<li><a href="#">메뉴1</a>
					<ul>
						<li><a href="">test1</a></li>
						<li><a href="">test2</a></li>
						<li><a href="">test3</a></li>
						<li><a href="">test4</a></li>
					</ul>
				</li>
				<li><a href="shopLogin.do">로그인</a></li>
			</ul>
		</div>
	</section>
</body>
</html>
