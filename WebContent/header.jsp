<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.sist_project_2.vo.*"%>
<%
	String id = request.getParameter("id");
	SessionVO svo = (SessionVO)session.getAttribute("svo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/sist_project_2/js/am-pagination.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#search_btn").click(function(){
			keywordCheck();
		});
		
		 $("#search_text").keypress(function(e) {		 
             if (e.keyCode == 13) {       
            	 keywordCheck();
               }

	});
		
		 function keywordCheck(){
			 if($("#search_text").val() != ""){
					 location.href="http://localhost:9000/sist_project_2/category/search_list.jsp?keyword="+$("#search_text").val(); 
				}else{
					alert("검색어를 입력해주세요");
				}
		 }
		 
		 
	})
</script>
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
									src="http://localhost:9000/sist_project_2/images/nibang_logo.png"></li>
								<li><a href="#" onclick="document.getElementById('mw_temp2').style.display='block'">모든제품</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_list.jsp?type=책상&id=<%=id%>">책상/식탁</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_list.jsp?type=침대&id=<%=id%>">침대</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_list.jsp?type=의자&id=<%=id%>">의자</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_list.jsp?type=소파&id=<%=id%>">소파</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_list.jsp?type=수납장&id=<%=id%>">수납장</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_list.jsp?type=옷장&id=<%=id%>">옷장</a></li>
							</ul>
						</nav>
					</div>
				</div>			
				<div class="icons">
					<input type="text" name="se" id="search_text"> <button type="button" id="search_btn"><img
						src="http://localhost:9000/sist_project_2/images/search.png"></button>
				</div>
				
				<a href="http://localhost:9000/sist_project_2/index.jsp?id=<%=id%>"><img id="logo"
					src="http://localhost:9000/sist_project_2/images/nibang_logo.png"></a>
				<nav class="second">
					<% if(svo != null) { %>
					<ul>
						<li><a href="#"><%=svo.getName() %>님</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp?id=<%= id%>">마이페이지</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/event/event_main.jsp">이벤트</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp?id=<%= id%>">고객센터</a>
						<div></div></li>
						<li style="padding-right: 20px;"><a href="">매장안내</a></li>
					</ul>
					<% } else { %>
					<ul>
						<li><a href="http://localhost:9000/sist_project_2/login/login.jsp">로그인</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/join/join.jsp">회원가입</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/event/event_main.jsp">이벤트</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp?id=<%= id%>">마이페이지</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp?id=<%= id%>">고객센터</a>
						<div></div></li>
						<li style="padding-right: 20px;"><a href="">매장안내</a></li>
					</ul>
					<% } %>
				</nav>
			</div>
		</div>
	</header>
</body>
</html>