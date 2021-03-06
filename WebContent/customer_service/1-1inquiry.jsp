<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<% 
	String mid = request.getParameter("id");
	messageVO vo = new messageVO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#btn_close").click(function(){
			
			$("#inquiryform1").each(function(){
				this.reset();
			});
		});
		
		$("#btn_1-1inquiry").click(function(){
			if($("#m_div").val() == "선택"){
				alert("문의 구분을 선택해주세요");
				$("#m_div").focus();
				return false;
			}else if($("#m_title").val() == ""){
				alert("제목을 입력해주세요");
				$("#m_title").focus();
				return false;
			}else if($("#m_content").val() == ""){
				alert("내용을 입력해주세요");
				$("#m_content").focus();
				return false;
			}else{
				inquiryform1.submit();
			}
			
		});
		
});
	
</script>
<title>1:1 문의</title>
</head>
<style>
	section.section1{
		 width:1100px;;		 				 			 		
		 display:inline-block;
		 height:80%;
		 padding-top:10%;
		 margin-bottom:100px;
	}		 	

</style>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<section class ="section1">
		<jsp:include page="../sideMenuBar2.jsp"/>
		  	<div class ="inquiry">
				<div>
					<h1>1 : 1 문의</h1>
					<label>궁금하신 사항을 남겨주세요.</label>
				</div>
				<div >
					<div class="kdiv" onclick="window.open('http://pf.kakao.com/_laGxnK/chat')"><a href="" class="kakao" > <br><span>카톡문의</span></a></div>
					<div class="mdiv"><a href="#open"  class="message"><br><span>쪽지문의</span></a></div>					  
						<div class="white_content" id="open">
						<div class="inquiry_content"  id="inquiry_content">
							<a href="#close"><img id="btn_close" src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
							<h3>문의</h3>
							<form name="inquiryform1" action="1-1inquiryProc.jsp" method="post" class="inquiryform1" id="inquiryform1"  enctype="multipart/form-data">
								<input type="hidden" name="mid" value="<%=mid%>"> 
								<ul>
									<li><label>문의구분</label>
										<select name="m_div" id="m_div">
							  				<option value="선택">선택</option>
							  				<option value="상품문의">상품문의</option>
							  				<option value="주문/결제/취소">주문/결제/취소</option>
							  				<option value="배송">배송</option>
							  				<option value="교환/반품">교환/반품</option>
							  				<option value="회원정보">회원정보</option>
							  				<option value="사이트이용">사이트이용</option>
							  				<option value="이벤트/프로모션">이벤트/프로모션</option>
							  				<option value="기타문의">기타문의</option>
										</select>
									</li>
									<li>제목</li>
									<li><input type="text" name="m_title" id="m_title"></li>
									<li>상세 내용</li>
									<li><textarea name="m_content" id="m_content"></textarea></li>
									<li><input type="file" name="m_file" id="m_file"></li>
									<li>제품 전체 이미지, 부분(파손부위) 이미지를 함께 첨부 바랍니다.<br></li>
								</ul>
									<button type="submit" id="btn_1-1inquiry">신청하기</button>
							</form>
						</div>        
					</div>
				</div>
				<div id="third_div">
					<label>채팅 상담 운영시간</label>
					<div><span>평일</span> 9:30 ~ 17:30  ( 점심시간 12:30 ~ 13:30 ) </div>
					<div><span>주말</span> 9:30 ~ 12:30  ( 쇼핑몰 구매상담 제외 ) </div> 
					<div>일요일 및 법정 공휴일 휴무</div>
				</div>
			   
		   </div>
		</section>
		<jsp:include page="../nibangBanner.jsp"/>
</body>
</html>