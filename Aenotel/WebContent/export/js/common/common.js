/**
 * 
 */
$(document).ready(function(){
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
