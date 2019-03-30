/**
 * 
 */

$(document).ready(function(){
	//아이디 중복체크
	var idCheck = 'N';
	$(document).on('click ' , '#idCheckBtn' , function(){
		userIdCheck();
	});
	//체크된 아이디 다시작성 버튼  reIdCheckBtn
	$(document).on('click' ,"#reIdCheckBtn" , function(){
		reIdCheck();
	});
	//비밀번호 확인 
	var passwordCheck = 'N';
	$("#alert-success").hide();
	$("#alert-danger").hide();
	$("input").keyup(function(){
		var userPassword = $("#userPassword").val();
		var userPasswordCheck = $("#userPasswordCheck").val();
		if(userPassword != "" || userPasswordCheck != ""){
			if(userPassword == userPasswordCheck){
				$("#alert-success").show();
				$("#alert-danger").hide();
				$("#submit").removeAttr("disabled");
				passwordCheck = 'Y';
			}else{
				$("#alert-success").hide();
				$("#alert-danger").show();
				$("#submit").attr("disabled", "disabled");
				passwordCheck = 'N';
			}    
		}
	});
	
	//조인 버튼 누룰시 중복체크 확인
	$(document).on('click' ,"#joinBtn" , function(){
		alert(idCheck + ' , ' + passwordCheck );
		if(idCheck != 'Y'){
			alert('ID 중복체크 해주세요');
		}else if(passwordCheck != 'Y'){
			alert('PASSWORD를 확인 해주세요');
			
		}
		else{
			alert('조인');
		}
		
	});
});

//함수
/*(function($){
	test = function(){
	
	};
})(jQuery);*/

//아이디 중복체크
(function($){
	userIdCheck = function(){
		var userId = $('#userId').val();
		if(userId == null || userId == ''){
			alert('ID를 입력해주세요.');
		}
		else{
			$.ajax({
				url: 'idCheck.do',
				type: 'post',
				data: {userId},
				success: function(result) {
					if(userId == result){
						alert('이미사용중인 ID 입니다.');
					}else{
						alert('사용가능한 아이디 입니다.');
						$('#idContentDIV').empty();
						var str = '';
						str += '<input type="text" id="userId" name="userId" value="'+ userId +'" readonly />';
						str += '<input type="button" id="reIdCheckBtn" name="" value="다시작성">';
						$('#idContentDIV').append(str);
						idCheck = 'Y';
						alert(idCheck);
					}
				},
				error: function(){
					alert('fail');
				}
			});
		}
	};
})(jQuery);

//체크된 아이디 다시작성 버튼  reIdCheckBtn
(function($){
	reIdCheck = function(){
		$('#idContentDIV').empty();
		var str = '';
		str += '<input type="text" id="userId" name="userId" required />'
		str += '<input type="button" id="idCheckBtn" name="" value="중복체크">'
		$('#idContentDIV').append(str);
		idCheck = 'N'
		alert(idCheck);
	};
})(jQuery);