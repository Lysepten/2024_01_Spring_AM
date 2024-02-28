<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST"></c:set>

<%@ include file="../common/head.jspf"%>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
</head>
<body>
	<div id="map" style="width:500px;height:400px;"></div>
		
		<p>
		<button class="btn"  onclick="setCenter()">지도 중심좌표 이동시키기</button>
		<button class="btn" onclick="panTo()">지도 중심좌표 대전으로 이동시키기</button>
	</p>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4f69b55c9c466f91d08d33415d35266a"></script>
	<script>
		var	lat;
		var	lon;
	
	async function getData2() {
		const API_KEY = '%2FuVHLtR1PUUwIJ5atClfZHJpP0c2IW%2F5lh9m%2FLQ0IK5BNHX0YKtAZpsU5OFjJyGgh8II4ExW6qiwi7h3cMP8Qg%3D%3D';
		const url = 'https://www.yuseong.go.kr/ys_parking/ysparkingList/ORP/getJSONData.do?_wadl&type=json';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
		console.log(data.response);
		console.log(data.response.header);
		console.log(data.response.header.resultMsg);
		console.log(data.response.body.items[0].item.latitude);
		console.log(data.response.body.items[0].item.longitude);
		
		lat = data.response.body.items[0].item.latitude;
		lon = data.response.body.items[0].item.longitude;
	}
	
	getData2();

	
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		function setCenter() {
			// 이동할 위도 경도 위치를 생성합니다 
			var moveLatLon = new kakao.maps.LatLng(33.452613, 126.570888);

			// 지도 중심을 이동 시킵니다
			map.setCenter(moveLatLon);
		}

		function panTo() {
			// 이동할 위도 경도 위치를 생성합니다 
			var moveLatLon = new kakao.maps.LatLng(lat, lon);

			// 지도 중심을 부드럽게 이동시킵니다
			// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
			map.panTo(moveLatLon);
		}
	</script>
</body>
</html>



<%@ include file="../common/foot.jspf"%>