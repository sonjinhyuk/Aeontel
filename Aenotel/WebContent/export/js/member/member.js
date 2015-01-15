/**
 * 
 */
$(document).ready(function(){
	$("#memeberID").focus();
	$("#checkPasswd").focusout(checkPasswd);
	$("#passwd").focusout(checkPasswd);
	$("#memeberName").keyup(function(event){
		regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
		v = $(this).val();
		if (regexp.test(v)) {
			alert("한글만입력하세요");
			$(this).val(v.replace(regexp, ''));
		}
	});
	$("#memberID").focusout(function(){
		var parameter = {"memberID" : $("#memberID").val()};
		$.ajax({
			type : "POST",
			url : "/Aeontel/Member.do?op=duplicate",
			data : parameter,
			contenType : "application/son; charset=utf-8",
			beforeSend : function(){
				$("body").css("cursor","wait");
			},
			success : function( data ) {
				if( data == "ok"){
					$(".duplicate").html("가입이 가능합니다.");
					$(".duplicate").val("Y");
				} else if( data == "ok"){
					$(".duplicate").html("중복입니다.");
					$(".duplicate").val("N");
				}
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n"
						+ "message:" + request.responseText
						+ "\n" + "error:" + error);
			},
			complete: function(){
				$("body").css("cursor","default");
			}
		});
	});
	$(".onlyNumber").keyup(function(event){
		regexp =  /[a-zㄱ-ㅎ가-하A-Z]|[ \[\]{}()<>?|`~!@#$%^&*\-\/_+=,.;:\"'\\]/gi;
		v = $(this).val();
		if (regexp.test(v)) {
			alert("숫자만 입력 하세요.");
			$(this).val(v.replace(regexp, ''));
		}
	});
	if( bool == "n" ){
		alert("정상적인 접근을 하여 주십시오.");
		history.back();
	}
	
	$("#joinMember").click(function(){
		var parameter;
		memberID = $("#memberID").val();
		passwd = $("#passwd").val();
		memeberName = $("#memeberName").val();
		memeberBrithDay = $("#memeberBrithDay").val();
		sex = $(":radio[name=sex]:checked").val();
		tel1 = $("#tel1").val();
		tel2 = $("#tel2").val();
		zipCode = $("#zipCode").val();
		address1 = $("#address1").val();
		address2 = $("#address2").val();
		address3 = $("#address3").val();
		address4 = $("#address4").val();
		email = $("#email").val();
		
		if( $.trim(memberID) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		if( $.trim(passwd) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		if( $.trim(memeberBrithDay) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		if( $.trim(sex) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		if( $.trim(tel1) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		if( $.trim(zipCode) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		
		if( $.trim(address1) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		
		if( $.trim(address2) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		
		if( $.trim(address3) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		if( $.trim(address4) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		if( $.trim(email) === ""){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		
		if( $(".duplicate").val("N") ){
			alert("요구사항을 만족 시켜 주십시오.");
			return;
		}
		
		parameter = {
			"memberID" : memberID,
			"passwd" : passwd,
			"memeberName" : memeberName,
			"memeberBrithDay" : memeberBrithDay,
			"sex" : sex,
			"tel1" : tel1,
			"tel2" : tel2,
			"zipCode" : zipCode,
			"address1" : address1,
			"address2" : address2,
			"address3" : address3,
			"address4" : address4,
			"email" : email
		}
		
		$.ajax({
			type : "POST",
			url : "168.188.127.89:8080/Aeontel/Member.do?op=joinMember",
			data : parameter,
			dataType : "json",
			contenType : "application/son; charset=utf-8",
			beforeSend : function(){
				$("body").css("cursor","wait");
			},
			success : function( data ) {
				if( data.success == "success"){
					alert("가입이 성공하였습니다.");
					location.href ="/Aeontel/"
				} else {
					alert("가입이 실패 했습니다.");
				}
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n"
						+ "message:" + request.responseText
						+ "\n" + "error:" + error);
			},
			complete: function(){
				$("body").css("cursor","default");
			}
		});
	});
});

function checkPasswd(){
	if($("#passwd").val() != $("#checkPasswd").val()){
		$("#checkEdPasswd").html("서로의 비밀번호가 다릅니다.");
		$("#checkPasswd").css({
			"border-color" : "rgb(237,49,95)",
			"border-width" : "2px",
			"border-style" : "solid"
		});
	} else {
		$("#checkEdPasswd").html("비밀번호가 일치 합니다.");
		$("#checkPasswd").css({
			"border-color" : "rgb(85,85,85)",
			"border-width" : "2px",
			"border-style" : "solid"
		});
	}
}