<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
    var mapLocation = new google.maps.LatLng('37.571087', '126.992506'); // 지도에서 가운데로 위치할 위도와 경도
    var markLocation = new google.maps.LatLng('37.571087', '126.992506'); // 마커가 위치할 위도와 경도
     
    var mapOptions = {
	    center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
	    zoom: 18, // 지도 zoom단계
	    mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = 
    	new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
        mapOptions);
     
    var size_x = 60; // 마커로 사용할 이미지의 가로 크기
    var size_y = 60; // 마커로 사용할 이미지의 세로 크기
     
    // 마커로 사용할 이미지 주소
    var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                        new google.maps.Size(size_x, size_y), '', '', new google.maps.Size(size_x, size_y));
     
    var marker;
    marker = new google.maps.Marker({
           position: markLocation, // 마커가 위치할 위도와 경도(변수)
           map: map,
           icon: image, // 마커로 사용할 이미지(변수)
//    	   info: '현재 위치 입니다', //'말풍선 안에 들어갈 내용'
           title: 'KG아이티뱅크 종로점' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
    });
     
    var content = "기본 위치 입니다! <br/> 다른 사람들의 위치를 확인해보세요!"; // 말풍선 안에 들어갈 내용
     
    // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
    var infowindow = new google.maps.InfoWindow({ content: content});

    google.maps.event.addListener(marker, "click", function() {
        infowindow.open(map,marker);
    });
  }
  google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
	<jsp:include page="/header.jsp"/>
	<div style="float: left">
		<jsp:include page="/side.jsp"/>
	</div>
	<div id="map-canvas" style="width: 1600px; height: 800px; "></div>
</body>
</html>