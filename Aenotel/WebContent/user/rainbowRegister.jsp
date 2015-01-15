<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
<title>�λ�</title>
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
			<input type="text" placeholder="Ű���带 �Է��� �ּ���." size="50"> <input type="button" value = "�˻�"> 
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
			<div class = "registerwords">
				<div class = "leftSide">
					<div class = "leftSidemenu">ī�װ�</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">�������</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">��ɰ���</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">�۾���</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">��ۺ�</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu">�ɼ��߰�</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu img">�����̹��� ���</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu movie">������ ���</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu textarea">��ɻ󼼳���</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu fileImge">��ɻ��̹���</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu indication">������ ���û���</div>
					<div class = "registerBar"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "leftSidemenu phoneNum">�޴��� ��ȣ</div>
				</div>
				<div class = "rightSide">
					<div class = "rightSidemenu">
						<select style="width: 120px;">
							<option>����</option>
						</select>
						<select>
							<option>����</option>
						</select>
					</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type="text" placeholder="������ �Է��� �ּ���."> </div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type="number">,000�� </div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type="number">��<span style="color: green;">* ����� ������ �۾��� �ҿ�Ǵ� �ð��� �Է��Ͽ� �ּ���.</span></div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type="number">,000��</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu"><input type = "checkbox"> �Ǹſɼ� ����</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu img">
						<div class = "bagicimg">
							<img src="/Aeontel/images/register/main_rainbow_basicImg.jpg">
						</div> 
					</div>
					<div class = "registerBar2"><img src="/Aeontel/images/footer/main_rainbow_sub_footer_line.jpg"  draggable="false"></div>
					<div class = "rightSidemenu movie"><input type="text" size="108" placeholder="��Ʃ�꿡 �������� ����Ͻ� �� ���콺 ������ ��ư Ŭ�� - ������ URL���� �� �Է� �Ͻø� �˴ϴ�."> </div>
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
					<div class = "rightSidemenu phoneNum"><input type="tel" placeholder="000-0000-0000���� �Է��Ͽ� �ֽʽÿ�." pattern="[0-1]3-[0-9]4-[0-9]4" max = 11></div>
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