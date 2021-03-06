<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>키워드로 장소검색하고 목록으로 표출하기</title>
    <script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f7ce94d4dd9c22ccad809655bc3ab74f&libraries=services"></script>
	<script>
	$(document).ready(function(){
		
		search_loc("일룸 서울");
		function search_loc(loc){
			
		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		        level: 4 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(); 
		
		// 키워드로 장소를 검색합니다
		ps.keywordSearch(loc, placesSearchCB); 
		
		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB (data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new kakao.maps.LatLngBounds();
		
		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
		        }       
		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        map.setBounds(bounds);
		    } 
		}
		
		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {
			var imageSrc = 'http://localhost:9000/sist_project_2/images/nibang_logo.jpg', // 마커이미지의 주소입니다    
		    imageSize = new kakao.maps.Size(24, 29), // 마커이미지의 크기입니다
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
		    // 마커를 생성하고 지도에 표시합니다
		    var marker = new kakao.maps.Marker({
		        
		    	image: markerImage, 
		    	map: map,
		        position: new kakao.maps.LatLng(place.y, place.x) 
		    });
		
		    // 마커에 클릭이벤트를 등록합니다
		    kakao.maps.event.addListener(marker, 'click', function() {
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		        infowindow.open(map, marker);
		    });
		}
		
		}
		
			$("li").click(function (){
				var a =$(this).attr("id");
				search_loc(a);
			})
	})
</script>

    <style>
		.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
		.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
		.map_wrap {position:relative;width:100%;height:500px;}
		#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;height:400px;margin:90px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
		.bg_white {background:#fff;}
		#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
		#menu_wrap .option{text-align: center; }
		#menu_wrap .option p {margin:10px 0;}  
		#menu_wrap .option button {margin-left:5px;}
		#placesList li {list-style: none;}
		#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
		#placesList .item span {display: block;margin-top:4px;}
		#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
		#placesList .item .info{padding:10px 0 10px 55px;}
		#placesList .info .gray {color:#8a8a8a;}
		#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
		#placesList .info .tel {color:#009900;}
		#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
		#placesList .item .marker_1 {background-position: 0 -10px;}
		#placesList .item .marker_2 {background-position: 0 -56px;}
		#placesList .item .marker_3 {background-position: 0 -102px}
		#placesList .item .marker_4 {background-position: 0 -148px;}
		#placesList .item .marker_5 {background-position: 0 -194px;}
		#placesList .item .marker_6 {background-position: 0 -240px;}
		#placesList .item .marker_7 {background-position: 0 -286px;}
		#placesList .item .marker_8 {background-position: 0 -332px;}
		#placesList .item .marker_9 {background-position: 0 -378px;}
		#placesList .item .marker_10 {background-position: 0 -423px;}
		#placesList .item .marker_11 {background-position: 0 -470px;}
		#placesList .item .marker_12 {background-position: 0 -516px;}
		#placesList .item .marker_13 {background-position: 0 -562px;}
		#placesList .item .marker_14 {background-position: 0 -608px;}
		#placesList .item .marker_15 {background-position: 0 -654px;}
		#pagination {margin:10px auto;text-align: center;}
		#pagination a {display:inline-block;margin-right:10px;}
		#pagination .on {font-weight: bold; cursor: default;color:#777;}
		section.map_section{
			border:1px solid white;
		}
		div.map_wrap{
			margin: 150px 0 150px 250px;
		}
		div.bg_white div.select_loc{
			border:1px solid red;
			width:80px;
			height:385px;
  	    	float:left;
		}
		div.bg_white div.select_loc li{
			margin-bottom:10px;
			font-size:10px;
		}
		div.bg_white div.select_loc li button{
			font-size:10px;
			backgroud-color:rgba(255, 255, 255, 0.7);
			border:1px solid white;
		}
		div.bg_white div#store_loc{
			border:1px solid blue;
			width:230px;
			height:385px;
		}
		div.store_info{
			border:1px solid blue;
			width:750px;
			margin-top:-40px;
			margin-bottom:50px;
			font-size:25px;
			text-align:center;
		}
		div#map{
			
		}
		/** 날씨 API css*/
		.map_section .js-weather-container {
	    	text-align: right;
		}
	
		.map_section .js-weather-container .js-weather {
		    position: absolute;
		    right: 5%;
		    top: 80px;
		    color: #aaa;
		    font-size: 15px;
		}
		
		.map_section .js-weather-icon {
			position: absolute;
			top: 60px;
			right: 10px;
		}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
		<section class ="map_section">
		<div class="js-weather-container">
        	<span class="js-weather"></span>
        	<span class="js-weather-icon"></span>
    	</div>
		<div class="map_wrap">
		<div class = "store_info">매장안내</div>
		    <div id="map" style="width:750px;height:400px;position:relative;overflow:hidden;"></div>
		
		    <div id="menu_wrap" class="bg_white">
		        <div class="option">
		            <div>
		                <form onsubmit="searchPlaces(); return false;">
		                  	<div>
		                  		<div class ="select_loc">
		                  			<ul>
		                  				<li id ="일룸 서울">서울</li>
		                  				<li id="인천 일룸">인천</li>
		                  				<li id="일룸 대전">대전</li>
		                  				<li id="일룸 세종">세종</li>
		                  				<li id="일룸 광주">광주</li>
		                  				<li id="일룸 대구">대구</li>
		                  				<li id="일룸 울산">울산</li>
		                  				<li id="일룸 부산">부산</li>
		                  				<li id="일룸 제주">제주</li>
		                  				<li id="일룸 경기도">경기도</li>
		                  				<li id="일룸 강원도">강원도</li>
		                  				<li id="일룸 세종">충청도</li>
		                  				<li id="일룸 전라도">전라도</li>
		                  				<li id="일룸 경상도">경상도</li>
                  					</ul>
		                  		</div>
		                  		<div id ="store_loc">
		                  			<ul class ="store_select">
		                  				
		                  			</ul>
		                  		</div>
		                  	</div>
		                </form>
		            </div>
		        </div>

		        <ul id="placesList"></ul>
		        <div id="pagination"></div>
		    </div>
		</div>
		</section>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
 	<script src="http://localhost:9000/sist_project_2/js/weather.js"></script>
</body>
</html>