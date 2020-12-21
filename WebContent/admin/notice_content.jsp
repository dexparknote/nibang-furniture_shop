<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
 
 <% 
 	String nid = request.getParameter("nid");
 	noticeDAO dao = new noticeDAO();
 	noticeVO vo = dao.getContent(nid);
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<style>
	.section1 aside.sideMenuBar2 ul>li:first-child>a {
		font-size: 15px;
		color: rgb(144, 144, 144);
	}
	.section1 table.notice_table{
		width:500px;
	}
	.section1 table.notice_table tr:first-child td{
		text-align:center;
		padding-left:0;
	}
</style>
</head>
<body>
<section class="section1">
<aside class="sideMenuBar2">
				<nav>
					<ul>
						<li><a href="http://localhost:9000/sist_project_2/admin/adminPage.jsp">상품 리스트</a></li>
						<li><a href="http://localhost:9000/sist_project_2/admin/product_insert.jsp">상품등록</a></li>
						<li><a href="http://localhost:9000/sist_project_2/admin/notice_list.jsp">공지사항</a></li>
						<li><a href="http://localhost:9000/sist_project_2/admin/faq_list.jsp">FAQ</a></li>
						<li><a href="http://localhost:9000/sist_project_2/admin/1-1inquiry_list.jsp">1:1문의</a></li>
					</ul>	
				</nav>
			   </aside>
			<div class="content">
				<div><h1>공지사항</h1></div>					
				<div class="list_body">
					<table class="notice_table">
						<tr class="table_header">
							<th>제목</th>
							<td><%= vo.getNtitle() %></td>
							<th>등록일</th>
							<td><%= vo.getNdate() %></td>
						</tr>
						<tr>
							<td colspan='8'>
								<p><%= vo.getNcontent().replace("\r\n", "<br>") %></p>
								<%if(vo.getNsfile() != null) {%>
									<img src ="http://localhost:9000/sist_project_2/upload/<%=vo.getNsfile() %>">
								<%} %>
						</td>
						</tr>
						<tr>
							<td colspan='8'>
								<a href="notice_update.jsp?nid=<%=nid%>"><button type="button">수정</button></a>
								<a href="notice_delete.jsp?nid=<%=nid%>"><button type="button">삭제</button></a>
							</td>
						</tr>
					</table>
				</div>
			</div>
	</section>
</body>
</html>