<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<title>주문/배송조회</title>
<style>
	section.section1 {
		width: 100%;
		display: inline-block;
		height: 80%;
		margin-top: 55px;
		margin-bottom: 55px;
	}
	/* div.left_content {
		position: absolute;
	} */
	div.right_content {
		position: relative;
	}
	div.content aside.sideMenuBar {
		border: 1px solid rgb(170, 170, 170);
		width: 165px;
		position: absolute;
		margin-left: 40px;
    	margin-top: 5%;
	}

	div.content aside.sideMenuBar ul {
		padding-left: 20px;
	}

	div.content aside.sideMenuBar ul li {
		list-style-type: none;
		margin-top: 30px;
		font-size: 14.5px;
		font-weight: 540;
	}

	div.content aside.sideMenuBar ul li:nth-child(3), div.content aside.sideMenuBar ul li:nth-child(4),
	div.content aside.sideMenuBar ul li:nth-child(5), div.content aside.sideMenuBar ul li:nth-child(7),
	div.content aside.sideMenuBar ul li:nth-child(8), div.content aside.sideMenuBar ul li:nth-child(10),
	div.content aside.sideMenuBar ul li:nth-child(11) {
		margin-top: 15px;
	}
	
	div.content aside.sideMenuBar ul li:nth-child(3) a, div.content aside.sideMenuBar ul li:nth-child(4) a,
	div.content aside.sideMenuBar ul li:nth-child(5) a, div.content aside.sideMenuBar ul li:nth-child(7) a,
	div.content aside.sideMenuBar ul li:nth-child(8) a, div.content aside.sideMenuBar ul li:nth-child(10) a,
	div.content aside.sideMenuBar ul li:nth-child(11) a {
		font-size: 12px;
		color: rgb(144, 144, 144);
		text-decoration: none;
		font-weight: 0;
	}

	div.content aside.sideMenuBar ul li:nth-child(3) a:hover, div.content aside.sideMenuBar ul li:nth-child(4) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(5) a:hover, div.content aside.sideMenuBar ul li:nth-child(7) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(8) a:hover, div.content aside.sideMenuBar ul li:nth-child(10) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(11) a:hover {
		color: rgb(200, 10, 30);
	}
	div.title {
    	color: #333;
   		padding: 50px;
		text-align: center;
		font-size: 35px;
	}
	div.order_status_div {
		background-color: #f0f0f0;
	    padding: 23px;
	    margin-bottom: 45px;
	    overflow: hidden;
	}
	div.status_item {
	    float: left;
	    width: 100px;
	    height: 100px;
	    position: relative;
	}

	div.bar_item {
		float: left;
	    width: 8px;
	    height: 2px;
	    margin: 51px 19px 47px;
	    background-color: #63666a;
	}
	div.right_content ul {
	    display: inline-block;
	    float: left;
	    width: 100%;
	}
	div.right_content ul>li {
		margin: 0 0 5px 0;
   		text-align: left;
	}
	div .duration_item {
	    display: inline-block;
	    background-color: #fff;
	    width: 182px;
	    height: 50px;
	    font-weight: 300;
	    color: #333;
	    border: none;
	    position: relative;
	    outline: 1px solid #aaa;
	}
	
	div.duration_btn button {
				display: inline-block;
    			background-color: #fff;
   				width: 182px;
    			height: 50px;
    			font-weight: 300;
    			color: #333;
    			border: none;
    			position: relative;
    			z-index: 0;
    			outline: 1px solid #aaa;
				margin-right: -3px;    			
			}
	button.duration_btn1 {
		color: #c80a1e;
		outline: 1px solid #c80a1e;
	}
			
	table.order_table {
		border-top: 1px solid #aaa;
		border-bottom: 1px solid #aaa;
		width: 100%;
		margin: 40px auto 200px;
		border-collapse: collapse;
	}
	table.order_table tr td{
		font-size: 20px;
		color: #aaa;
		height: 24px;
		border-bottom: none;
		font-weight: 300;
		padding: 180px 0 200px;
		text-align:center;
	}
	
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1">
			<aside class="sideMenuBar">
				<nav>
					<ul>
						<li>마이페이지</li>
						<li>나의 쇼핑내역</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp">주문/배송 조회</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/search_order_cancel.jsp">주문/취소 조회</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/cancel_refund_info.jsp">교환/반품/환불 안내</a></li>
						<li>나의 게시글 답변</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiry.jsp" >1:1문의</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp">상품평 관리</a></li>
						<li>회원정보</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
					</ul>
				</nav>
			</aside>
		
		<div style="width: 100%; display: flex; justify-content: center;">
			<div class="right_content">
				<div class="title">주문/배송 조회</div>
				<div class="order_status_div" style="margin-bottom:20px">
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus1.png" class="status_img">
					</div>
					<div class="bar_item"></div>
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus2.png" class="status_img">
					</div>
					<div class="bar_item"></div>
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus3.png" class="status_img">
					</div>
					<div class="bar_item"></div>
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus4.png" class="status_img">
					</div>
					<div class="bar_item"></div>
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus5.png" class="status_img">
					</div>
				</div>
				<div>
						<ul>
							<li>‘택배&시공’건의 경우 ‘배송중’ 상태로 표시되어도 품목별로 배송일이 다를 수 있습니다.</li>
							<li>주문 후 일룸에서 발송해 드리는 알림문자의 배송예정일이 실제 배송일입니다.</li>
						</ul>
				</div>
				<div class="duration_btn">
					<button type="button" class="duration_btn1">1개월</button>
					<button type="button" class="duration_btn2">3개월</button>
					<button type="button" class="duration_btn3">6개월</button>
					<button type="button" class="duration_btn4">전체</button>
				</div>
				<div style="margin:40px; text-align:center;">
						<span style="color:#aaa; font-size: 16px; ">최대 3년 이내 주문내역만 조회하실 수 있습니다.</span>
				</div>
				<table class="order_table">
					<tbody>
						<tr>
							<td class="nolist">주문내역이 없습니다.</td>
						</tr>
					</tbody>
				</table>
			</div>  
		</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>