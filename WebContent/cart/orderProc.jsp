<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%	request.setCharacterEncoding("utf-8"); %>     
<jsp:useBean id="vo" class ="com.sist_project_2.vo.orderVO"/>
<jsp:setProperty name="vo" property="*"/>    
    
<%
	orderDAO dao = new orderDAO();
	boolean result = dao.orderWrite(vo);
		
	if(result){
		//response.sendRedirect("creditPayment.jsp?id="+vo.getMid()+"&pid="+vo.getPid()+"&cnt="+vo.getPcnt()+"&oid="+vo.getOid());
		response.sendRedirect("creditPayment.jsp?id="+vo.getMid()+"&pid="+vo.getPid()+"&cnt="+vo.getPcnt());
		//response.sendRedirect("orderComplete.jsp?id="+vo.getMid()+"&pid="+vo.getPid()+"&cnt="+vo.getPcnt()+"&oid="+vo.getOid());
	}else{
		response.sendRedirect("errorPage.jsp");
	}

%>	