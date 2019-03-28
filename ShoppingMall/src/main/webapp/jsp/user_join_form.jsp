<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조인 폼</title>
<!--J-query  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!--css  -->
<link rel="stylesheet" href="css/bootstrap.css" >
<!--bootstrap  -->
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
<div class="btn btn-outline-success disabled " align="center" aria-disabled="true">
<form action="" method="post">
	<div align="center">
		<table class="">
			<tr>
				<th>
					<label>회원가입</label>
				</th>
			</tr>
			<tr>
				<td>
					<input class="btn btn-outline-secondary" type="text"   >
					<input class="btn btn-outline-secondary" type="button" value="중복확인">
				</td>
			</tr>
			<tr>
				<td>
					<input class="btn btn-outline-secondary" type="password"  >
				</td>
			</tr>
			<tr>
				<td>
					<input class="btn btn-outline-secondary" type="email"  > @
					<input class="btn btn-outline-secondary" type="email"  >
				</td>
				<td></td>
			</tr>
			<tr>
				<td>
					<input class="btn btn-outline-secondary" type="text"  >
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input class="btn btn-outline-secondary btn-block" type="text" >
				</td>
			</tr>
			<tr>
				<td>
					<input class="btn btn-outline-secondary btn-block" type="text" >
				</td>
			</tr>
			<tr>
				<td>
					<input class="btn btn-outline-secondary" type="date" > 
				</td>
			</tr>
		</table>
	</div>
</form>

<div>
	<a class="btn btn-outline-primary">1</a>
	<div class="btn btn-outline-secondary" >1</div>
</div>

</div>
</body>
</html>