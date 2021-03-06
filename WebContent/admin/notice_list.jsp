<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*"%>
	
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}
	noticeDAO dao = new noticeDAO();
	ArrayList<noticeVO> list = dao.getList();
%>
<%if(name.equals("관리자")) {%> 
<!DOCTYPE html>  
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/iloom_admin.css">


</head>
<body>
	<div>
	<jsp:include page="../header.jsp"></jsp:include>
		<section class="section1">
			<div>
					<div class="content">
						<div class="admin"><h1>공지사항</h1></div>
						<div class="list_body" style="height:500px; overflow:auto">
							<table class="ntable">
								<tr>
									<td colspan="3">									
										<a href="notice_write.jsp"><button type="button">글쓰기</button></a>										
									</td>
								</tr>
								<tr class="table_header">
									<th>NO</th>
									<th>제목</th>
									<th>등록일</th>									
								</tr>
								<% for (noticeVO vo : list) {%>
								<tr id="notice_subject">
									<td><%= vo.getRno() %></td>
									<td><a href="notice_content.jsp?nid=<%=vo.getNid()%>" id="notice_subject"><%= vo.getNtitle() %></a></td>
									<td><%= vo.getNdate() %></td>								
								</tr>	
								<% } %>						
								<tr>
									
								</tr>
							</table>
						</div>
					</div>
			</div>
		</section>
	</div>


</body>
</html>
<%}else {%>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 