﻿/**
 * 
 */
var login;
$(document).ready(function(){
	$.ajax({
		type : "POST",
		url : "/Aeontel/Member.do?op=loginCheck",
		contenType : "application/son; charset=utf-8",
		beforeSend : function(){
			$("body").css("cursor","wait");
		},
		success : function( data ) {
			if( data == "Y"){
				$(".loginBefore").remove();
			} else {
				$(".loginAfter").remove();
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
	$(".logo").click(function(){
		location.href = "/Aeontel/index.jsp";
	});
	
	$(".topButton").click(function(){
		$(window).scrollTop(0);
	});
	
	$("#inSubMenu1").click(function(){
		location.href="/Aeontel/user/helloMessage.jsp";
	});
	$("#inSubMenu2").click(function(){
		location.href="/Aeontel/user/useFor.jsp";
	});
	$("#inSubMainMenu").click(function(){
		location.href= "/Aeontel/user/rainbowRegister.jsp";
	});
	$(".sideMenu li").click(function(){
		location.href = this.children[0].attributes[0].nodeValue;
	});
	
	$(".inMenu").click(function(_this){
		var clickImg = this.children[0].attributes[0].nodeValue;
		var kind;
		if( clickImg.indexOf('menu1') != -1){
			kind = "borrow";
		} else if( clickImg.indexOf('menu2') != -1 ){
			kind = "study";
		} else if( clickImg.indexOf('menu3') != -1 ){
			kind = "specialist";
		} else if( clickImg.indexOf('menu4') != -1 ){
			kind = "hobby";
		}
		location.href = "/Aeontel/user/rainbowList.jsp?kind=" + kind;
	});
	
	if(msieversion() === 'IE'){
		$(".subMenu").css("height","191px");
	}
	
	$(".loginBefore img").click(function(){
		var kindButton = this.src;
		if(kindButton.indexOf('login.jpg') != -1 ){
			location.href = "/Aeontel/user/member/loginForm.jsp";
		} else if( kindButton.indexOf('join.jpg') != -1 ){
			location.href="/Aeontel/user/member/joinCertification.jsp";
		} else if( kindButton.indexOf('community.jpg') != -1 ){
			location.href="/Aeontel/user/community/notice.jsp";
		} else if( kindButton.indexOf('siteMap.jpg') != -1 ){
			
		} 
	});
	$(".loginAfter img").click(function(){
		var kindButton = this.src;
		if( kindButton.indexOf('logout.jpg') != -1 ){
			$.ajax({
				type : "POST",
				url : "/Aeontel/Member.do?op=logout",
				contenType : "application/son; charset=utf-8",
				beforeSend : function(){
					$("body").css("cursor","wait");
				},
				success : function( data ) {
					alert("로그아웃됐습니다.");
					location.reload();
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
		}
	});
});

function msieversion(){
	var b = "";
	var ua = window.navigator.userAgent;
	if(ua.indexOf('MSIE') > 0 || ua.indexOf('Trident') > 0)
	 b = "IE";
	else if(ua.indexOf('Opera') > 0 || ua.indexOf('OPR') > 0)
	 b = "Opera";
	else if(ua.indexOf('Firefix') > 0)
	 b = "Firefox";
	else if(ua.indexOf('Safari') > 0) {
	 if(ua.indexOf('Chrome') > 0)
	  b = "Chrome";
	 else
	  b = "Safari";
	}
	return b;
}
