<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서브 템플레이트</title>


</head>
<body>
	<!--메인 DIV  -->
	<div class="wrap" align="center">
		<!--상단  -->
			<jsp:include page="event_top_menu.jsp"></jsp:include>
		<div class="top_bn_zone">
			상단 
		</div>
		<div class="top_fix_zone" id="topBar">
			<jsp:include page="event_menu.jsp"></jsp:include>
		</div>
		<!--중앙  -->
		<div>
			<jsp:include page="${viewPage }"></jsp:include>
		</div>
		<div>
			<jsp:include page="bottom.jsp"></jsp:include>
		</div>
		<!--하단  -->
		<!-- <div class="top_con_zone" id="fixNextTag" >
			하단
		</div> -->
	</div>
</body>
</html>