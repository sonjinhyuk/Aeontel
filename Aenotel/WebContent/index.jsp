<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String login = null;
	try{
		login = (String)session.getAttribute("login");
	} catch( Exception e ){
		login = "N";
	}
	if( login == null ){
		login = "N";
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>이름 미정</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="export/css/mainLayout.css">
<script type="text/javascript" src = "./export/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	var login = "<%=login%>";
</script>
<script type="text/javascript" src = "./export/js/common/common.js"></script>
</head>
<body>
	<header>
		<div class = "logo">
			<div id = "logoSpace"></div>
			<img alt="" src="./images/main_rainbow_logo.jpg" draggable="false">
		</div>
		<div class = "searchArea">
<!-- 			<div contenteditable="true" style="height: 50px;" ></div> -->
			<input type="text" placeholder="키워드를 입력해 주세요." size="50"> <input type="button" value = "검색"> 
		</div>
		<div class = "subMenu">
			<div class="loginBefore">
				<img alt="" src="./images/upmenu/main_rainbow_sub_upMenu_login.jpg"  draggable="false">
				<img alt="" src="./images/upmenu/main_rainbow_sub_upMenu_join.jpg"  draggable="false">
				<img alt="" src="./images/upmenu/main_rainbow_sub_upMenu_community.jpg"  draggable="false">
				<img alt="" src="./images/upmenu/main_rainbow_sub_upMenu_siteMap.jpg"  draggable="false">
			</div>
			<div class="loginAfter">
				<img alt="" src="./images/upmenu/main_rainbow_logout.jpg"  draggable="false">
				<img alt="" src="./images/upmenu/main_rainbow_sub_upMenu_modify.jpg"  draggable="false">
				<img alt="" src="./images/upmenu/main_rainbow_sub_upMenu_myinfo.jpg"  draggable="false">
				<img alt="" src="./images/upmenu/main_rainbow_sub_upMenu_community.jpg"  draggable="false">
				<img alt="" src="./images/upmenu/main_rainbow_sub_upMenu_siteMap.jpg"  draggable="false">
			</div>
			<div class = "inSubmenu" >
				<div id = "inSubmenuBack">
					<img alt="" src="./images/main_rainbow_sub_menu_back_03.jpg"  draggable="false">
					<div id = "inSubMainMenu"><img alt="" src="./images/main_rainbow_sub_main_menu.jpg"  draggable="false"></div>
					<div class = "submenuZindex" id = "inSubMenu1"><img alt="" src="./images/main_rainbow_sub_menu1.jpg"  draggable="false"></div>
					<div class = "submenuZindex" id = "inSubMenu2"><img alt="" src="./images/main_rainbow_sub_menu2.jpg"  draggable="false"></div>
					<div class = "submenuZindex" id = "inSubMenu3"><img alt="" src="./images/main_rainbow_sub_menu3.jpg"  draggable="false"></div>
					<div class = "submenuZindex" id = "inSubMenu4"><img alt="" src="./images/main_rainbow_sub_menu4.jpg"  draggable="false"></div>
				</div>
			</div>
		</div>
	</header>
	<nav>
		<div class = "sidebarMenu">
			<div class = "menu">
				<div class = "inMenu"><img src = "./images/menu/menu1.jpg"  draggable="false"></div>
				<div class = "inMenu"><img src = "./images/menu/menu2.jpg"  draggable="false"></div>
				<div class = "inMenu"><img src = "./images/menu/menu3.jpg"  draggable="false"></div>
				<div class = "inMenu"><img src = "./images/menu/menu4.jpg"  draggable="false"></div>
			</div>
		</div>
	</nav>
	<!-- content 넣기 -->
	<section>
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
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_intro.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_notice.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_inquiry.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_clause.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_policy.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_space.jpg"  draggable="false"></div>
				<div class = "footmenu"><img src="./images/footer/main_rainbow_sub1-1_footerMenu_phoneNumber.jpg"  draggable="false"></div>
			</div>
			<div class = "middleLine"></div>
			<div class = "middleLine" id = "middle2"></div>
			<div class = "moja2c">
			</div>
		</div>
	</footer>
</body>
</html>