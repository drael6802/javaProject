<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"name="viewport" content="width=device-width, initial-scale=1">
<title>메인 페이지</title>
<!--J-query  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!--css  -->
<link rel="stylesheet" href="css/bootstrap.css" >
<!--bootstrap  -->
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
<div>
<!--TOP DIV  -->
<div >
	<jsp:include page="/jsp/main_menu.jsp" />	
</div>
<!--Middle DIV  -->
<div align="center">
	<div style="width: 1000px;">
		<!--상단 기능구현
		로고 , 검색창 , 빠른 이동 단축키  -->
		<table class="table " >
			<tr style="height: 50px;">
				<td><img alt="" src="img/LOGO.jpg" style="width: 80px; height: 80px;"></td>
				<td>
					<div align="center" >
						<form action="" >
							<table>
								<tr>
									<td>
										<input class="btn btn-outline-info btn-lg btn-block" type="text" style="width: 500px;" />
									</td>
									<td>
										<input class="btn btn-info btn-lg" type="submit" value="검색" >
									</td>
								</tr>
							</table>
						</form>
					</div>
				</td>
				<td></td>
			</tr>
		</table>	
		<!--여기만 Page 이동 
		메인 페이지에서 전체메뉴 상품 등등 구현-->
		<div>
			
		</div>
		<table class=" "  >
			<tr>
				<%-- <td style="width: 180px; height: 120px; padding: 10px;">
					<!--로그인 폼 테이블  -->
					<div>
						<jsp:include page="user_login_form.jsp"/>
					</div>
				</td> --%>
				<td rowspan="3">
					<div align="center">
						<%-- <jsp:include page="rollring.jsp"/> --%>
					</div>
					<%-- <jsp:include page="event_banner.jsp"/><br> --%>
				</td>
			</tr>
			<tr>
				<td>
					
				</td>
			</tr>
		</table>	
		<table class="table " >
			<tr>
				<td colspan="2">
					<!--메인 보디 폼  -->
					<div align="center">
						<%-- <jsp:include page="shop_main_page.jsp"/> --%>
						<jsp:include page="${viewPage }"/>
					</div>
				</td>
			</tr>
		</table>	
		<!--하단 기능 구현 
		각종 사이트 정보 및 서비스 전체 메뉴 고객센터 및 건의 사항 등 게시판 구현 -->
		<table class="table " >
			<tr>
				<td colspan="3">
					<jsp:include page="bottom_form.jsp"/>
				</td>
			</tr>
		</table>	
	</div>
</div>
<!--Left DIV  -->
<!--네비게이션 바 구현  -->
<div>
	<jsp:include page="pollding.jsp"></jsp:include>
</div>
<!--bottom DIV  -->
<div></div>
</div>
</body>
</html>