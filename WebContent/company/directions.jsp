<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ include file="../header.jsp" %>

    <!-- ---------------------------- 콘텐츠 영역 ------------------------------- -->
    <div id="contents">

        <h1>찾아오시는 길</h1>
        <hr>

        <!-- 콘텐츠 영역 >> mapWrap -->
        <div id="mapWrap">
            <div id="map"></div>

            <!-- ---------------------------- Kakao Maps API  ------------------------------- -->
            <!--
                > 카카오 개발자(https://developers.kakao.com/)에서 '등록된 도메인'과 '호출된 도메인'이 다른 경우에 지도가 정상적으로 출력되지 않을 수 있습니다.
                > 현재 등록된 도메인 : http://127.0.0.1:5500 (VS Code, Live Server)
            -->

            <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=53936144ac1b3c3ab0b9c3e2ca6a972b&libraries=services,clusterer,drawing" type="text/javascript"></script>
            <script>
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                    mapOption = { 
                        center: new kakao.maps.LatLng(37.478029, 126.878921), // 지도의 중심좌표
                        level: 3 // 지도의 확대 레벨
                    };
                
                var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
                
                // 마커가 표시될 위치입니다 
                var markerPosition  = new kakao.maps.LatLng(37.478029, 126.878921); 
                
                // 마커를 생성합니다
                var marker = new kakao.maps.Marker({
                    position: markerPosition
                });
                
                // 마커가 지도 위에 표시되도록 설정합니다
                marker.setMap(map);
                
                // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
                // marker.setMap(null);
            </script>

            <!-- ---------------------------- Kakao Maps API END ------------------------------- -->
        </div>

        <!-- 콘텐츠 영역 >> tpt(Transportation) -->
        <div id="tpt">

            <div id="subway">
                <i class="fas fa-subway"></i>
                <span>지하철</span>
                <p>1, 7호선 가산디지털단지역 - 도보 5~10분</p>
            </div>

            <div id="bus">
                <i class="fas fa-bus"></i>
                <span>버스</span>
                <p>가산디지털3단지 또는 로옴코리아(월드벤처센터) 정류장 하차</p>
                <p>가산디지털3단지 또는 월드벤처센터, 대성디폴리스 정류장 하차</p>
            </div>

            <div id="addr">
                <h2>JACOB'S LADDER</h2>
                <p>
                    서울특별시 금천구 가산디지털2로 115(우편번호 08505)<br>
                    TEL : (02) 552 - 1722<br>
                    FAX : (02) 552 - 1723<br>
                </p>
            </div>
                
        </div>

    </div>

    <!-- ---------------------------- 콘텐츠 영역 END ------------------------------- -->
    
	<%@ include file="../footer.jsp" %>
