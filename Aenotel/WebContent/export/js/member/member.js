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
		$.ajax({
			type : "POST",
			url : "/Aeontel/Member.do?op=joinMember",
			data : parameter,
			dataType : "json",
			contenType : "application/son; charset=utf-8",
			beforeSend : function(){
				$("body").css("cursor","wait");
			},
			success : function( data ) {
				var i = 0;
				$("#model_name option").remove();
				$("<option></option>").text("자판기 모델명").attr("value","none")
				.appendTo("#model_name");
				for( i = 0; i < data.length; i++ ){
					$("<option></option>").attr("value",data[i].modelCode).text(data[i].model).appendTo("#model_name");
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