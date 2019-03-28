<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<!--J-query  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!--css  -->
<link rel="stylesheet" href="css/bootstrap.css" >
<!--bootstrap  -->
<script type="text/javascript" src="js/bootstrap.js"></script>

<style>
    .login {
        background: #f8f8f8;
        padding: 60px 0;
    }
    
    #login-form > div {
        margin: 15px 0;
    }
	
</style>

</head>
<body>
<div class="container ">
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success">
            <div class="panel-heading">
            	<div class="panel-title">로그인</div>
            	<div>
            		<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            		<div class="container">
					  
					</div>
            	</div>
            </div>
            <div class="panel-body">
                <form action="" method="post" id="login-form">
                    <div>
                    	<input type="text" class="form-control" name="id" placeholder="ID" autofocus required />
                    </div>
                    <div>
                        <input type="password" class="form-control" name="password" placeholder="PASSWORD" required />
                    </div>
                    <div>
                        <button type="submit" class="form-control btn btn-primary btn-lg">로그인</button>
                    </div>
                    <div>
                        <button type="button"  class="btn btn-secondary" onclick="location.href='shopJoin.do'">회원가입</button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-outline-primary">아이디찾기</button>
                        <button type="button" class="btn btn-outline-primary">비밀번호찾기</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>