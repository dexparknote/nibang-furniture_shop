<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
    /*  header {
		width: 100%;
		margin: auto;
		position: fixed;
		clear: both;
		z-index: 5;
	}
	
	*:focus {
		outline: none;
	}	
	menubar 
	header .mw {
		position: fixed;
		_position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		display: none;
	}	
	header .mw .bg {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background: #000;
		opacity: .3;
		filter: alpha(opacity = 50);
	}	
	header .mw .fg {
		float: left;
		position: absolute;
		width: 300px;
		height: 100%;
		border-radius: 7px;
		border: 3px solid #ccc;
		background: #fff;
	}	
	

	
	header div.fg>nav>ul>li {
		list-style-type: none;
		padding: 10px;
	}	
	header div.fg>nav>ul>li a{
		color: #333333;
		text-decoration: none;
	}	
	header div.fg>nav>ul>li a:hover{
		color: rgb(200, 10, 30);
	}	
	
	header div.fg button.close_btn {
		display: inline-block;
		float: right;
		margin: 40px 30px 0 0;
		border: 1px solid white;
		width: 50px;
		heigth: 50px;
		background-color: white;
	}	
	header div.fg button.close_btn:focus {
		outline: 0 !important;
	}	
	header div.fg button.close_btn:active {
		opacity: 0.7;
	}	
	header div.fg button.back_btn {
		display: inline-block;
		float: right;
		margin: 40px 30px 0 0;
		border: 1px solid white;
		width: 50px;
		heigth: 50px;
		background-color: white;
	}	
	header div.fg button.back_btn:focus {
		outline: 0 !important;
	}	
	header div.fg button.back_btn:active {
		opacity: 0.7;
	}	
	header div.fg>nav.first>ul {
		margin-top: 20px;
		margin-right: 150px;
	}	
	
	header div.fg>nav>ul>li.li_logo{
		margin-bottom: 30px;
		float: left;
	}
	header div.fg>nav>ul>li:nth-child(2), div.fg>nav>ul>li:nth-child(3), div.fg>nav>ul>li:nth-child(4)
		{
		font-size: 20px;
		font-weight: 2000px;
	}	
	header div.fg>nav>ul>li:nth-child(5), header div.fg>nav>ul>li:nth-child(6),
	header div.fg>nav>ul>li:nth-child(7), header div.fg>nav>ul>li:nth-child(8),
	header div.fg>nav>ul>li:nth-child(9), header div.fg>nav>ul>li:nth-child(10) {
		font-size: 13px;
		font-weight: 2000px;
	}	
	

	header div.fg>nav.all_items>ul {
		margin-top: 20px;
		margin-right: 150px;
	}	
	header div.fg>nav.all_items>ul>li:nth-child(2) {
		font-size: 20px;
		font-weight: 2000px;
	}	
	header div.fg>nav.all_items>ul>li:nth-child(3), header div.fg>nav.all_items>ul>li:nth-child(4),
	header div.fg>nav.all_items>ul>li:nth-child(5), header div.fg>nav.all_items>ul>li:nth-child(6) {
		font-size: 13px;
		font-weight: 2000px;
	}	
	header div.fg>nav.all_items>ul>li:nth-child(2) {
		padding-bottom: 30px;
	}	

	
	header div img.menu_bar {
		display: inline-block;
		float: left;
		margin: 23px 15px 0 30px;
		width: 20px;
		height: 20px;
	}	
	header div.icons input[type="text"] {
		width: 300px;
		height: 40px;
		text-indent: 10px;
		background-color: white;
		border: none;
		background: transparent;
		float: left;
		padding-bottom: 4px;
	}	
	header .icons img {
		width: 20px;
		height: 20px;
		margin-top: 8px;
	}	
	header .icons {
		display: inline-block;
		border: 2px solid #c80a1e;
		width: 350px;
		height: 40px;
		padding-left: 10px;
		border-radius: 15px;
		margin-top: 15px;
	}	
	header .icons:hover {
		background: #f5f5f5;
		opacity: 0.7;
	}	
	header #logo {
		position: absolute;
		left: 45%;
		margin-top: 7px;
		width: 120px;
		height: 60px;
	}	
	header #li_logo {
		width: 120px;
		height: 60px;
		margin-left: -13px;
	}	
	header div nav.second ul{
		padding-top: 15px;
	}
	header div nav.second>ul>li {
		display: inline;
		font-size: 12px;
	}	
	header div nav.second ul li a {
		text-decoration: none;
		color: black;
	}	
	header div nav.second ul {
		float: right;
		margin-top: -50px;
		margin-right: 10px;
	}	
	header div nav.second ul li div {
		background-color: gray;
		width: 1px;
		height: 7px;
		display: inline-block;
		margin: 0 7px 0 7px;
	} */
</style>
</head>
<body>
	<header>
		<div>
			<div>
				<img src="http://localhost:9000/sist_project_2/images/icon_gnb_menu.png"
					onClick="document.getElementById('mw_temp').style.display='block'"
					class="menu_bar">

				<div id="mw_temp" class="mw">
					<div class="bg">
						<!--이란에는 내용을 넣지 마십시오.-->
					</div>
					<div class="fg">
						<button
							onclick="document.getElementById('mw_temp').style.display='none'"
							type="button" class="close_btn">
							<img 
								src="http://localhost:9000/sist_project_2/images/option_delete.png">
						</button>
						<nav class="first">
							<ul>
								<li class="li_logo"><img id="li_logo"
									src="http://localhost:9000/sist_project_2/images/nibang_logo.png"></li>
								<li><a href="#" onclick="document.getElementById('mw_temp2').style.display='block'">모든제품</a></li>
								<li><a href="#">신제품</a></li>
								<li><a href="http://localhost:9000/sist_project_2/event/event_main.jsp">이벤트</a></li>
								<!-- <li><a href="http://localhost:9000/sist_project_2/category/category_table_desk.jsp">책상/식탁</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_bed.jsp">침대</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_chair.jsp">의자</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_sofa.jsp">소파</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_storage_closet.jsp">수납장</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_closet.jsp">옷장</a></li> -->
							</ul>
						</nav>
					</div>
				</div>
				<div id="mw_temp2" class="mw">
					<div class="bg">
						<!--이란에는 내용을 넣지 마십시오.-->
					</div>
					<div class="fg">
						<button
							onclick="document.getElementById('mw_temp2').style.display='none'"
							type="button" class="back_btn">
							<img 
								src="http://localhost:9000/sist_project_2/images/option_back.png">
						</button>
						<nav class="all_items">
							<ul>
								<li class="li_logo"><img id="li_logo"
									src="http://localhost:9000/sist_p roject_2/images/nibang_logo.png"></li>
								<li><a href="#" onclick="document.getElementById('mw_temp2').style.display='block'">모든제품</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_table_desk.jsp">책상/식탁</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_bed.jsp">침대</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_chair.jsp">의자</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_sofa.jsp">소파</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_storage_closet.jsp">수납장</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_closet.jsp">옷장</a></li>
							</ul>
						</nav>
					</div>
				</div>			
				<div class="icons">
					<input type="text" name="se"> <img
						src="http://localhost:9000/sist_project_2/images/search.png">
				</div>
				
				<a href="http://localhost:9000/sist_project_2/index.jsp"><img id="logo"
					src="http://localhost:9000/sist_project_2/images/nibang_logo.png"></a>
				<nav class="second">
					<ul>
						<li><a href="http://localhost:9000/sist_project_2/login/login.jsp">로그인</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/join/join.jsp">회원가입</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/event/event_main.jsp">이벤트</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp">마이페이지</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp">고객센터</a>
						<div></div></li>
						<li style="padding-right: 20px;"><a href="">매장안내</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
</body>
</html>