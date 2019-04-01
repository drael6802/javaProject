<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
	<!-- 제이쿼리 -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<!--제이쿼리 스크립트 경로 -->
	<script type="text/javascript" src="js/user_join.js?ver=17"></script>
	<!--CSS속성  -->
	<link rel="stylesheet" href="" >
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
// 주소 카카오 api js
function sample6_execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
													
				addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
                	addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
		}
	}).open();
}
</script>
	
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
			<td class="content" >
				<div id="idContentDIV">
					<input type="text" id="userId" name="userId" required />
					<input type="button" id="idCheckBtn" name="" value="중복체크">
				</div>
			</td>
		</tr>
		<tr>
			<td class="title">
				비밀번호
			</td>
			<td>
				<input type="password" id="userPassword" name="userPassword" required />
			</td>
		</tr>
		<tr>
			<td class="title">
				비밀번호 확인
			</td>
			<td>
				<input type="text" id="userPasswordCheck" name="" required />
				<div class="alert alert-danger" id="alert-danger" style="color: red;" >비밀번호가 일치하지 않습니다.</div>
				<div class="alert alert-success" id="alert-success" style="color: green;">비밀번호가 일치합니다.</div>
			</td>
		</tr>
		<tr>
			<td class="title">
				이름
			</td>
			<td>
				<input type="text" id="userName" name="userName" required />
			</td>
		<tr>
			<td class="title">
				주소
			</td>
			<td>
				<!-- <input type="text" id="userAddress" name="userAddress" required /><br>
				<input type="text" id="userAddressInfo" name="userAddressInfo"/> -->
				<div>
					<input type="text" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" placeholder="주소"><br>
					<input type="text" id="sample6_detailAddress" placeholder="상세주소">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목">
				</div>
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
				<input type="tel" id="userPhone" name="userPhone" required />
			</td>
		</tr>
		<tr>
			<td class="title">
				이메일
			</td>
			<td>
				<input type="email" id="userEmail1" name="userEmail1" style="width: 150px; required "/>
				<input type="text" id="userEmail2" name="userEmail2"  style="width: 150px;" required disabled />
				<select id="emailSelecter">
					<option>naver.com</option>
					<option>naver.com</option>
					<option>naver.com</option>
					<option id="directInput">직접입력</option>
				</select>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>
				<div style="height: 10px;"></div>
				<input type="button" id="joinBtn" value="회원가입" class="joinBtn"/>
				<input type="button" id="chcekBtn" value="값 확인" class="joinBtn"/>
			</td>
		</tr>
	</table>
	
</form>
</body>
</html>