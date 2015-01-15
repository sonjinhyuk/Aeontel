<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	String bool = "n";
	try{
		bool = request.getParameter("next");
	} catch(Exception e ){
		bool = "n";
	}
	if( bool == null ){
		bool = "n";
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 정보 입력</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="/Aeontel/export/css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="/Aeontel/export/css/member/member.css">
<script type="text/javascript" src = "/Aeontel/export/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	var bool = "<%=bool%>";
	function zipCodeCheck(){
		open ("/Aeontel/user/zipcode/zipCode.jsp","zipcode","left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width=700, height=400");
	}
</script>
<script type="text/javascript" src = "/Aeontel/export/js/common/common.js"></script>
<script type="text/javascript" src = "/Aeontel/export/js/member/member.js" charset="UTF-8"></script>
</head>
<body>
	<header>
		<div class = "logo">
			<div id = "logoSpace"></div>
			<img alt="" src="/Aeontel/images/main_rainbow_logo.jpg" draggable="false">
		</div>
		<div class = "searchArea">
<!-- 			<div contenteditable="true" style="height: 50px;" ></div> -->
			<input type="text" placeholder="키워드를 입력해 주세요." size="50" id = "searchText"> <input type="button" value = "검색"> 
		</div>
		<div class = "subMenu">
			<div class="loginBefore">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_login.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_join.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_community.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_siteMap.jpg"  draggable="false">
			</div>
			<div class="loginAfter">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_siteMap.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_modify.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_myinfo.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_community.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_siteMap.jpg"  draggable="false">
			</div>
			<div class = "inSubmenu" >
				<div id = "inSubmenuBack">
					<img alt="" src="/Aeontel/images/main_rainbow_sub_menu_back_03.jpg"  draggable="false">
					<div id = "inSubMainMenu"><img alt="" src="/Aeontel/images/main_rainbow_sub_main_menu.jpg"  draggable="false"></div>
					<div class = "submenuZindex" id = "inSubMenu1"><img alt="" src="/Aeontel/images/main_rainbow_sub_menu1.jpg"  draggable="false"></div>
					<div class = "submenuZindex" id = "inSubMenu2"><img alt="" src="/Aeontel/images/main_rainbow_sub_menu2.jpg"  draggable="false"></div>
					<div class = "submenuZindex" id = "inSubMenu3"><img alt="" src="/Aeontel/images/main_rainbow_sub_menu3.jpg"  draggable="false"></div>
					<div class = "submenuZindex" id = "inSubMenu4"><img alt="" src="/Aeontel/images/main_rainbow_sub_menu4.jpg"  draggable="false"></div>
				</div>
			</div>
		</div>
	</header>
	<nav>
		<div class = "sidebarMenu">
			<div class = "menu">
				<div class = "inMenu"><img src = "/Aeontel/images/menu/menu1.jpg"  draggable="false"></div>
				<div class = "inMenu"><img src = "/Aeontel/images/menu/menu2.jpg"  draggable="false"></div>
				<div class = "inMenu"><img src = "/Aeontel/images/menu/menu3.jpg"  draggable="false"></div>
				<div class = "inMenu"><img src = "/Aeontel/images/menu/menu4.jpg"  draggable="false"></div>
			</div>
		</div>
	</nav>
	<!-- content 넣기 -->
	<section style="height: 1200px;">
		<div class = "message">
			<div class = "check"> 필수 입력 사항은 *로 표기 하였습니다. </div>
			<div class = "leftSide">
				<div>
					회원id
				</div>
				<div>
					비밀번호
				</div>
				<div>
					비밀번호 확이
				</div>
				<div>
					이름
				</div>
				<div>
					생년월일
				</div>
				<div>
					성별
				</div>
				<div>
					전화번호1
				</div>
				<div>
					전화번호2
				</div>
				<div>
					우편번호
				</div>
				<div>
					주소1
				</div>
				<div>
					주소2
				</div>
				<div>
					신주소1
				</div>
				<div>
					신주소2
				</div>
				<div>
					이메일
				</div>
			</div>
			<div class = "rightSide">
				<div>
					<input type="text" id = "memeberID" placeholder="영문자 또는 숫자로 입력 하세요." size="20"><span class = "require">*</span>
				</div>
				<div>
					<input type="password" id = "passwd" placeholder="비밀번호를 입력 하세요."><span class = "require">*</span>
				</div>
				<div>
					<input type="password" id = "checkPasswd" placeholder="비밀번호를 입력 하세요."><span id = "checkEdPasswd"></span><span class = "require">*</span>
				</div>
				<div>
					<input type="text" id = "memeberName" size="10" placeholder="3-5글자"><span class = "require">*</span>
				</div>
				<div>
					<input type="date" class ="onlyNumber" id = "memeberBrithDay"><span class = "require">*</span>
				</div>
				<div>
					남 <input type="radio" name ="sex" class = "memeberSex" checked="checked">
					여 <input type="radio" name ="sex" class = "memeberSex"><span class = "require">*</span>
				</div>
				<div>
					<input type="tel" class ="onlyNumber" id = "tel" placeholder="숫자만 사용 하십시오"><span class = "require">*</span>
				</div>
				<div>
					<input type="tel" class ="onlyNumber" id = "tel2" placeholder="숫자만 사용 하십시오">
				</div>
				<div>
					<input type="text" class ="onlyNumber" id = "zipCode" onclick="zipCodeCheck()"> <span class = "require">*</span>
				</div>
				<div>
					<input type="text" id = "address1">
				</div>
				<div>
					<input type="text" id = "address2">
				</div>
				<div>
					<input type="text" id = "address3">
				</div>
				<div>
					<input type="text" id = "address4">
				</div>
				<div>
					<input type="email"> <span class = "require">*</span>
				</div>
				<button class = "myButton" disabled="disabled" id = "joinMember">회원 가입</button>
			</div>
		</div>
		<div class = "mymenu">
			<div class = "mymenuTop">
				<ul>
					<li><a href="#null"></a></li>
					<li><a href="#null"></a></li>
					<li><a href="#null"></a></li>
					<li><a href="#null"></a></li>
				</ul>
			</div>
			<div class = "topButton">
			</div>
		</div>
	</section>
	<footer>
		<div class = "line"></div>
		<div class = "footer">
			<div style="padding: 15px 0 0 0; height: 20px;">
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_intro.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_notice.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_inquiry.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_clause.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_policy.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="/Aeontel/images/footer/main_rainbow_sub1-1_footerMenu_phoneNumber.jpg"  draggable="false"></div>
			</div>
			<div class = "middleLine"></div>
			<div class = "middleLine" id = "middle2"></div>
			<div class = "moja2c">
			</div>
		</div>
	</footer>
</body>
</html>