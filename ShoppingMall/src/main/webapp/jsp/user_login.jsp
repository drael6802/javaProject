<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<style type="text/css">
	table {
		margin: auto;
		text-align: center;
	}
	input {
		width: 305px;
		height: 50px;
		text-align: center;
		border: none;
		background: #D0D0D0;
	}
	.loginBtn {
		width: 305px;
		height: 50px;
		border: 1px solid;
		background: none;
	}
	.otherBtn {
		width: 97px;
		height: 50px;
		border: 1px solid;
		background: none;
	}
	h2,h5{
		color:#000;
	}
</style>
</head>
<body>
<div style="height: 80px;"></div>
<form action="">
	<table>
		<tr>		
			<td>
				<h2>로그인</h2>
				<div style="height: 15px;"></div>
				<h5>환영합니다! WSSW회원으로 다양한 혜택을 받아보세요!</h5>
				<div style="height: 30px;"></div>
			</td>
		</tr>
		<tr>		
			<td>
				<input type="text" id="" name="" placeholder="아이디"/>
			</td>
		</tr>
		<tr>
			<td>
				<input type="password" id="" name="" placeholder="비밀번호"/>
			</td>
		</tr>
		<tr>
			<td>
				<div style="height: 10px;"></div>
				<input type="submit" value="로그인" class="loginBtn"/>
				<div style="height: 5px;"></div>
			</td>
		</tr>
		<tr>
			<td> 
				<input type="button" value="회원가입" class="otherBtn" onclick="location.href='userJoin.do'">
				<input type="button" value="아이디찾기" class="otherBtn">
				<input type="button" value="비밀번호찾기" class="otherBtn">
			</td>
		</tr>
	</table>
</form>
</body>
</html>