<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<style type="text/css">
	table {
		margin: auto;
		text-align: center;
		width: 60%;
		border-collapse: collapse;
		border-left: none;
		border-right: none;
		color: #000000;
	}
	input {
		width: 200px;
		height: 20px;
	}
	.title {
		width: 150px;
		height: 40px;
		background: #D0D0D0;
	}
	.comtent {
	
	}
	.joinBtn {
		width: 100px;
		height: 50px;
		border: 1px solid;
		background: none;
	}
</style>
</head>
<body>
<div style="height: 10px;"></div>
<div align="center" style="margin: auto; color: #000000;">
	<h2>회원가입</h2>
</div>
<div style="height: 10px;"></div>
<form action="userJoinProc.do" method="post" >
	<table border="1">
		<tr>
			<td class="title">
				아이디
			</td>
			<td class="content">
				<input type="text" id="userId" name="userId"/>
			</td>
		</tr>
		<tr>
			<td class="title">
				비밀번호
			</td>
			<td>
				<input type="password" id="userPassword" name="userPassword"/>
			</td>
		</tr>
		<tr>
			<td class="title">
				비밀번호 확인
			</td>
			<td>
				<input type="text" id="" name=""/>
			</td>
		</tr>
		<tr>
			<td class="title">
				이름
			</td>
			<td>
				<input type="text" id="userName" name="userName"/>
			</td>
		<tr>
			<td class="title">
				주소
			</td>
			<td>
				<input type="text" id="userAddress" name="userAddress"/><br>
				<input type="text" id="userAddress" name="userAddress_info"/>
			</td>
		</tr>
		<tr>
			<td class="title">
				생년월일
			</td>
			<td>
				<input type="date" id="userBirth" name="userBirth" value="2000-01-01"/>
			</td>
		</tr>
		<tr>
			<td class="title">
				전화번호
			</td>
			<td>
				<input type="tel" id="userPhone" name="userPhone"/>
			</td>
		</tr>
		<tr>
			<td class="title">
				이메일
			</td>
			<td>
				<input type="text" id="userEmail" name="userEmail" style="width: 150px;"/>@<input type="text" id="" name="" style="width: 150px;"/>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>
				<div style="height: 10px;"></div>
				<input type="submit" value="회원가입" class="joinBtn"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>