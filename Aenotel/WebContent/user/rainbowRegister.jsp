<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
<title>인삿말</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="/Aeontel/export/css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="/Aeontel/export/css/register.css">
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
<!-- 			<div contenteditable="true" style="height: 50px;" ></div> -->
			<input type="text" placeholder="키워드를 입력해 주세요." size="50"> <input type="button" value = "검색"> 
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
	<!-- content 넣기 -->
	<section>
		<div class = "message">
			<div class = "registerwords">
				<div class = "leftSide">
					<div class = "leftSidemenu">카테고리</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">재능제목</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">재능가격</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">작업일</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">배송비</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">옵션추가</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu img">메인이미지 등록</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu movie">동영상 등록</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu textarea">재능상세내용</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu fileImge">재능상세이미지</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu indication">구매지 지시사항</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu phoneNum">휴대폰 번호</div>
				</div>
				<div class = "rightSide">
					<div class = "rightSidemenu">
						<select style="width: 120px;">
							<option>선택</option>
						</select>
						<select>
							<option>선택</option>
						</select>
					</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type="text" placeholder="제목을 입력해 주세요."> </div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type="number">,000원 </div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type="number">일<span style="color: green;">* 배송을 제외한 작업에 소요되는 시간을 입력하여 주세요.</span></div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type="number">,000원</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type = "checkbox"> 판매옵션 있음</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu img">
						<div class = "bagicimg">
							<img src="/Aeontel/images/register/main_rainbow_basicImg.jpg">
						</div> 
					</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu movie"><input type="text" size="108" placeholder="유튜브에 동영상을 등록하신 후 마우스 오른쪽 버튼 클릭 - 동영상 URL복사 후 입력 하시면 됩니다."> </div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu textarea"><textarea rows="13" cols="108"></textarea> </div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu fileImge">
						<input type="file">
						<input type="file">
						<input type="file">
						<input type="file">
					</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu indication"><textarea rows="5" cols="108"></textarea> </div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu phoneNum"><input type="tel" placeholder="000-0000-0000으로 입력하여 주십시오." pattern="[0-1]3-[0-9]4-[0-9]4" max = 11></div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<button></button>
				</div>
				<img src="/Aeontel/images/register/main_rainbow_sub_notice.jpg">
			</div>
		</div>
		<div class = "sideMenu useFor">
			<ul>
				<li><a href="./useFor.jsp"></a></li>
				<li><a href="./rainbowRegister.jsp"></a></li>
				<li><a href="./manageMessage.jsp"></a></li>
				<li><a href="./manageMessage.jsp"></a></li>
			</ul>
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