<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST"></c:set>

<%@ include file="../common/head.jspf"%>

<script>
	
// 	async function getData() {
// 		const API_KEY = '%2FuVHLtR1PUUwIJ5atClfZHJpP0c2IW%2F5lh9m%2FLQ0IK5BNHX0YKtAZpsU5OFjJyGgh8II4ExW6qiwi7h3cMP8Qg%3D%3D';
// 		const url = 'https://apis.data.go.kr/6300000/openapi2022/shard/getshard?serviceKey='+ API_KEY +'&pageNo=1&numOfRows=5';
// 		const response = await fetch(url);
// 		const data = await response.json();
// 		console.log("data", data);
// 	}
	
// 	getData();
	
	async function getData2() {
		const API_KEY = '%2FuVHLtR1PUUwIJ5atClfZHJpP0c2IW%2F5lh9m%2FLQ0IK5BNHX0YKtAZpsU5OFjJyGgh8II4ExW6qiwi7h3cMP8Qg%3D%3D';
		const url = 'https://www.yuseong.go.kr/ys_parking/ysparkingList/ORP/getJSONData.do?_wadl&type=json';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	getData2();
	
	async function getData3() {
		const API_KEY = '%2FuVHLtR1PUUwIJ5atClfZHJpP0c2IW%2F5lh9m%2FLQ0IK5BNHX0YKtAZpsU5OFjJyGgh8II4ExW6qiwi7h3cMP8Qg%3D%3D';
		const url = 'http://apis.data.go.kr/B550928/dissForecastInfoSvc/getDissForecastInfo?serviceKey='+API_KEY+'&numOfRows=10&pageNo=1&type=json&dissCd=1&znCd=11';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	getData3();
	
	async function getData4() {
		const API_KEY = '%2FuVHLtR1PUUwIJ5atClfZHJpP0c2IW%2F5lh9m%2FLQ0IK5BNHX0YKtAZpsU5OFjJyGgh8II4ExW6qiwi7h3cMP8Qg%3D%3D';
		const url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst?serviceKey='+API_KEY+'&numOfRows=10&pageNo=1&base_date=20240128&base_time=0600&nx=55&ny=127';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	getData4();
	
	
</script>

<%@ include file="../common/foot.jspf"%>