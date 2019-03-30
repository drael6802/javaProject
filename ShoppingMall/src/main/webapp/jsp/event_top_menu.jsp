<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.eld{
		margin: 0;
		padding: 0;
	}
	* {
		margin: 0;
		padding: 0;
	}
	.in{
		width: 800px;
		height: 30px;	
	}
	a {
		color: #000000;
		text-decoration: none;
	}
</style>
</head>
<body>
	<div class="eld in">
		<div style="text-align: right; font-size: small;">
			<div style="height: 5px;"></div>
				<c:choose>
					<c:when test="${empty sessionScope.userInfo }">
						<a href="userLogin.do">로그인</a>&nbsp;
						<a href="userJoin.do">회원가입</a>&nbsp;
					</c:when>
					<c:otherwise>
						<a href="userLogout.do">로그아웃</a>
					</c:otherwise>
				</c:choose>			
			<a href="">마이페이지</a>&nbsp;
			<a href="">장바구니</a>&nbsp;
			<a href="">고객센터</a>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div>
</body>
</html>