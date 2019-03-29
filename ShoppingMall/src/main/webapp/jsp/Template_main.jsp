<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 템플레이트</title>
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
		<div style="height: 1000px;">
			<jsp:include page="event_banner.jsp"></jsp:include>
			<jsp:include page="${viewPage }"></jsp:include>			
		</div>
		<!-- <div class="top_con_zone" id="fixNextTag" ></div> -->
		<!--하단  -->
		<div>
			<jsp:include page="/jsp/bottom.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>