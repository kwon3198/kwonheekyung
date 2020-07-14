<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- Content Wrapper. Contains page content -->
<div id="container">

	<!--  //부트스트랩 
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
  	<script>
  	jQuery(function($) {
  		$('.carousel').carousel({
  		  interval: 2000,
  		  pause: false
  		})
  	});
  	
  	</script>
	<section class="banner_slider" >
	
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="/resources/images/sun.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="item">
      <img src="/resources/images/sun2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="item">
      <img src="/resources/images/sun3.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="item">
      <img src="/resources/images/sun4.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="left carousel-control" style="font-size:40px;font-weight:bold;" href="#carouselExampleInterval" data-slide="prev" onclick="$('#myCarousel').carousel('prev')">
  <span class="slide_arrow">&lt;</span> 
  </a>
  <a class="right carousel-control" style="font-size:40px;font-weight:bold;" href="#carouselExampleInterval" data-slide="next" onclick="$('#myCarousel').carousel('next')">
  <span class="slide_arrow">&gt;</span>
  </a>
 
  <a class="left carousel-control" href="#carouselExampleInterval" role="button" data-slide="prev">
   <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  </a>
  <a class="right carousel-control" href="#carouselExampleInterval" role="button" data-slide="next">
   <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
  </a>
</div>
</div>
	</section> -->

	<div class="main_rolling_pc">
		<div class="visualRoll">
			<ul class="viewImgList">
				<li class="imglist0">
					<div class="roll_content">
						<a href="/resources/home/javascript:;"> <img
							src="/resources/home/img/img_slidecontents01.png"
							alt="OOOO OOOOO OOOO OOOOO, 스프링... OOOO OOOOO?"></a>
						<p class="roll_txtline">대한민국 각지역별 스시야</p>
					</div>
				</li>
				<li class="imglist1">
					<div class="roll_content">
						<a href="/resources/home/javascript:;"> <img
							src="/resources/home/img/img_slidecontents02.png"
							alt="OOOO OOOOOOOOO OOOOO 스프링정보, 스프링... OOOO OOOOO?"></a>
						<p class="roll_txtline">
							예약수 TOP20<br> 믿고 예약하는 20곳의 레스토랑
						</p>
					</div>
				</li>
				<li class="imglist2">
					<div class="roll_content">
						<a href="/resources/home/javascript:;"> <img
							src="/resources/home/img/img_slidecontents03.png"
							alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?"></a>
						<p class="roll_txtline">OOOO OOOOOOOOO OOOOOOOOO OOOOO</p>
					</div>
				</li>
			</ul>

			<div class="rollbtnArea">
				<ul class="rollingbtn">
					<li class="seq butt0"><a href="#butt"><img
							src="/resources/home/img/btn_rollbutt_on.png" alt="1번" /></a></li>
					<li class="seq butt1"><a href="#butt"><img
							src="/resources/home/img/btn_rollbutt_off.png" alt="2번" /></a></li>
					<li class="seq butt2"><a href="#butt"><img
							src="/resources/home/img/btn_rollbutt_off.png" alt="3번" /></a></li>
					<li class="rollstop"><a href="#" onclick="return false"
						class="stop"><img src="/resources/home/img/btn_roll_stop.png"
							alt="멈춤" /></a></li>
					<li class="rollplay"><a href="#" onclick="return false"
						class="play"><img src="/resources/home/img/btn_roll_play.png"
							alt="재생" /></a></li>
				</ul>
			</div>
			<!-- //rollbtnArea -->

		</div>
		<!-- //visualRoll -->
	</div>
	<!-- //main_rolling_pc -->

	<div class="main_rolling_mobile">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="/resources/home/javascript:;"><img
						src="/resources/home/img/mainslide_mob01.jpg"
						alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?" /></a>
				</div>
				<div class="swiper-slide">
					<a href="/resources/home/javascript:;"><img
						src="/resources/home/img/mainslide_mob02.jpg"
						alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?" /></a>
				</div>
				<div class="swiper-slide">
					<a href="/resources/home/javascript:;"><img
						src="/resources/home/img/mainslide_mob03.jpg"
						alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?" /></a>
				</div>
			</div>
			<div class="swiper-pagination"></div>
			<!-- <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div> -->

		</div>
		<!--//swiper-container-->
	</div>
	<!--//main_rolling_mobile -->

	<!-- about_area -->
	<div class="about_area">
		<h2>
			<b>실시간 리뷰</b>
		</h2>
		<div class="about_box">
				<ul class="place_list box_inner clear">
					<c:forEach items="${boardList}" var="boardVO" varStatus="status">
						<c:if test="${status.count <= 3}">
						<li><a href="/board/view?bno=${boardVO.bno}">
								<!-- 첨부파일이 있을때 if -->
								<c:if test="${boardVO.files[0] != null }">
									<c:set var="extName" value="${fn:split(boardVO.files[0],'.')}" />
									<c:set var="ext" value="${extName[fn:length(extName)-1]}" />
									<!-- 첨부파일이 있는데 이미지일때와 이미지가 아닐때 choose -->
									<c:choose>
										<c:when test="${fn:containsIgnoreCase(extNameArray, ext)}">
											<img src="/download?filename=${boardVO.files[0]}"title="첨부파일 이미지" style="width:100%;">
										</c:when>
										<c:otherwise>
											<img class="img_topplace" src="/resources/home/img/img_topplace01.jpg" alt="이미지 없음" />
										</c:otherwise>
									</c:choose>
								</c:if>
								<!-- 첨부파일이 없을때 if -->
								<c:if test="${boardVO.files[0] == null }">
									<img class="img_topplace" src="/resources/home/img/img_topplace01.jpg" alt="이미지 없음" />
								</c:if>
								
								<h3>${boardVO.title}</h3>
								<p class="txt">${boardVO.content}</p>
								<span class="view">VIEW</span></a>
						</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<!-- //about_area -->

	<!-- app_area -->
	<div class="appbbs_area">
		<div class="appbbs_box box_inner clear">
			<h2 class="hdd">상담과 최근게시물</h2>
			<p class="app_line">
				<a href="/resources/home/javascript:;">카카오톡 1:1 상담</a> <a
					href="/resources/home/javascript:;">전화 상담 신청</a>
			</p>
			<div class="bbs_line">
				<h3>
					<a href="/board/list">NOTICE</a>
				</h3>
				<ul class="notice_recent">
					<c:forEach items="${boardList}" var="boardVO" varStatus="status">
						<li><a href="/board/view?bno=${boardVO.bno}">${boardVO.title}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- //app_area -->

</div>
<!-- //container -->
<%@ include file="include/footer.jsp"%>
