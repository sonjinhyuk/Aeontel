<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String bigKind = null;
	String middleKind = null;
	try{
		bigKind = request.getParameter("bigKind");
	} catch( Exception e) {
		bigKind = "all";
	}
	try{
		middleKind = request.getParameter("middleKind");
	} catch( Exception e) {
		middleKind = "all";
	}
	
	if( bigKind == null | middleKind == null ){
		bigKind = "n";
		middleKind = "n";
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>�λ�</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="/Aeontel/export/css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="/Aeontel/export/css/purchase.css">
<script type="text/javascript" src = "/Aeontel/export/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src = "/Aeontel/export/js/common/common.js"></script>
</head>
<body>
	<header>
		<div class = "logo">
			<div id = "logoSpace"></div>
			<img alt="" src="/Aeontel/images/main_rainbow_logo.jpg" draggable="false">
		</div>
		<div class = "searchArea">
			<input type="text" placeholder="Ű���带 �Է��� �ּ���." size="50" id = "searchText"> <input type="button" value = "�˻�"> 
		</div>
		<div class = "subMenu">
			<div class="loginBefore">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_login.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_join.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_community.jpg"  draggable="false">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_sub_upMenu_siteMap.jpg"  draggable="false">
			</div>
			<div class="loginAfter">
				<img alt="" src="/Aeontel/images/upmenu/main_rainbow_logout.jpg"  draggable="false">
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
	<!-- content �ֱ� -->
	<section>
		<div class = "message">
			<div class = "title">������ �� ĭ �Դϴ�.</div>
			<div class = "spacebar">
				<div class = "spacebar bar"><span>HOME</span> <span>��з�</span> <span>�ߺз�</span></div>
			</div>
			<div class = "picAndPriceInfo" draggable="false">
				<div class = "mainPic"></div>
				<div class = "priceInfo">
					��ɱ��Ű���  &nbsp;&nbsp;<img src="/Aeontel/images/purchase/main_rainbow_purchases_wonPicjpg.jpg">&nbsp;&nbsp;
					<span id = "price">3000</span> R�Ӵ�
					<div id = "saveAndRainbowPoint">
						����&nbsp;<span id = "saving">1,000</span>&nbsp;RP <img src="/Aeontel/images/purchase/main_rainbow_purchases_infoperLine.jpg"> 
						���&nbsp;<span id = "donation">2,000</span>&nbsp;RP
					</div>
				</div>
				<div class = "productInfo">
					<div class = "detailInfo"></div>
					<div id = "detailInfoContent" >
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
					</div>
					<div class="detailInfo option"></div>
					<div class = "optionPrice">+5,000RP</div><!--  java coding ó�� �κ�. -->
					<div id = "optionInfo">
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
						asdfkfalksdjfklsadjf<br>
					</div>
<!-- 					10���� paging�Ұ��̴�. ajax ó��..�Ф� ���� ���� ���� ������ ���� �򰡰� �����ϴ�. ����. -->
					<div class = "afterPurchase">
						<div class = "aPBack">(0)</div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div style="height: 26px;"></div>
						<div class = "paging"> 1 2 3 4 5 6 7 8 9 10 ></div>
					</div>
					<div class = "like">(20)</div>
					<div class = "submitButtonSize">
						<div id = "submitButtonBig"></div>
						<div id = "likeButton"></div>
					</div>
				</div>
			</div>
		</div>
		<div class = "sideMenu purchaserInfoAndEtc">
			<div class = "purchaserInfo">
				<div class = "infoChar"></div>
				<div class = "sendComment"></div>
				<div class = "purchaserInfoDetail">
					<div class = "info">�Ǹ��� ID</div>
					<div class = "info">e-mail�ּ�</div>
					<div class = "info">���</div>
					<div class = "info">��������</div>
				</div>
				<div class = "counting">
					<span>20</span>
					<span>20</span>
					<span>5</span>
				</div>
			</div>
			<div class = "smallButton">
				<div class = "sButton"></div>
				<div class = "sButton"></div>
			</div>
<!-- 			3���� ����¡ -->
			<div class = "anotherPurchas">
				<div class = "anotherPurchas anBack"></div>
				<div class = "anBackBar"></div>
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