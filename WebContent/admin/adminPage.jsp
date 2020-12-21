<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.* , com.sist_project_2.vo.*, java.util.*"%>
    
   
<%
	productDAO dao = new productDAO(); 
	ArrayList<productVO> list = dao.getList();
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<title>Insert title here</title>
<style>
table{
 	text-align:center;
	width:800px;
}
table.notice_table tr td:nth-child(2){
	padding-left:0px;
}
.section1 aside.sideMenuBar2 ul>li:first-child>a {
	font-size: 15px;
	color: rgb(144, 144, 144);
}
table.notice_table tr img{
	width:50px;
	height:50px;
}
</style>
</head>
<body>
	<section class ="section1">
	<jsp:include page="../sideMenuBarAdmin.jsp"/>
	<div class="content">
	<div><h1>상품관리</h1></div>
	  <div class="list_body"style="height:500px; overflow:auto">
		<table class="notice_table">
			<tr>
				<th>상품번호</th>
				<th>상품명</th>
				<th>상품정보</th>
				<th>종류</th>
				<th>가격</th>
				<th>color</th>
				<th>이미지1</th>
				<th>이미지2</th>
				<th>등록일</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<% for ( productVO vo : list)  {%>
			<tr>
				<td><%= vo.getPid() %></td>
				<td><%= vo.getPname() %></td>
				<td><%= vo.getPinfo() %></td>
				<td><%= vo.getPkind() %></td>
				<td><%= vo.getPrice() %></td>
				<td><%= vo.getColor() %></td>
				<td><img src="../upload/<%= vo.getImg1() %>"></td>
				<%if(vo.getImg2() == null) {%>
				<td>x</td>
				<% }else {%>
				<td><img src="../upload/<%= vo.getImg2() %>"></td>
				<% } %>
				<td><%= vo.getPdate() %></td>
				<td><a href="product_update.jsp?pid=<%= vo.getPid() %>"><button type ="button">수정</button></a></td>
				<td><a href="product_delete.jsp?pid=<%= vo.getPid() %>"><button type ="button">삭제</button></a></td>
			</tr>
			<% } %>
		</table>
	</div>
	</div>
	</section>
</body>
</html>