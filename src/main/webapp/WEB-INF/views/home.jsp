<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" type="text/css" href="/resources/dist/css/slider-pro.min.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="/resources/examples/css/examples.css" media="screen"/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

<!-- Content Wrapper. Contains page content -->
<div id="container">

<!-- 테스트 슬라이드 -->
	<div id="example1" class="slider-pro">
		<div class="sp-slides">
			<div class="sp-slide">
				<img class="sp-image" src="/resources/src/css/images/blank.gif"
					data-src="/resources/src/css/images/test1.jpg"
					data-retina="/resources/src/css/images/test1.jpg"/>
				
				<p class="sp-layer sp-white sp-padding"
					data-horizontal="50" data-vertical="50"
					data-show-transition="left" data-hide-transition="up" data-show-delay="400" data-hide-delay="200">
					test1
				</p>

				<p class="sp-layer sp-black sp-padding hide-small-screen"
					data-horizontal="180" data-vertical="50"
					data-show-transition="left" data-hide-transition="up" data-show-delay="600" data-hide-delay="100">
					test1
				</p>

				<p class="sp-layer sp-white sp-padding hide-medium-screen"
					data-horizontal="315" data-vertical="50"
					data-show-transition="left" data-hide-transition="up" data-show-delay="800">
					test1
				</p>
			</div>

	        <div class="sp-slide">
	        	<img class="sp-image" src="/resources/src/css/images/blank.gif"
	        		data-src="/resources/src/css/images/test2.jpg"
	        		data-retina="/resources/src/css/images/test2.jpg/">

				<h3 class="sp-layer sp-black sp-padding" 
					data-horizontal="40" data-vertical="10%" 
					data-show-transition="left" data-hide-transition="left">
					test2
				</h3>

				<p class="sp-layer sp-white sp-padding hide-medium-screen" 
					data-horizontal="40" data-vertical="22%" 
					data-show-transition="left" data-show-delay="200" data-hide-transition="left" data-hide-delay="200">
					test2
				</p>

				<p class="sp-layer sp-black sp-padding hide-small-screen" 
					data-horizontal="40" data-vertical="34%" data-width="350" 
					data-show-transition="left" data-show-delay="400" data-hide-transition="left" data-hide-delay="500">
					test2
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="/resources/src/css/images/blank.gif"
					data-src="/resources/src/css/images/test3.jpg"
					data-retina="/resources/src/css/images/test1.jpg"/>

				<p class="sp-layer sp-white sp-padding" 
					data-position="centerCenter" data-vertical="-50" 
					data-show-transition="right" data-hide-transition="left" data-show-delay="500" >
					test3
				</p>

				<p class="sp-layer sp-black sp-padding hide-small-screen" 
					data-position="centerCenter" data-vertical="50" 
					data-show-transition="left" data-show-delay="700" data-hide-transition="right" data-hide-delay="200">
					test3
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="/resources/src/css/images/blank.gif"
					data-src="/resources/src/css/images/test4.jpg"
					data-retina="/resources/src/css/images/test4.jpg"/>

				<p class="sp-layer sp-black sp-padding" 
					data-position="bottomLeft"
					data-show-transition="up" data-hide-transition="down">
					test4<span class="hide-small-screen">
					test4</span>
					 <span class="hide-medium-screen">test4
					 </span>
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="/resources/src/css/images/blank.gif"
					data-src="/resources/src/css/images/test5.jpg"
					data-retina="/resources/src/css/images/test5.jpg"/>

				<p class="sp-layer sp-white sp-padding" 
					data-vertical="10" data-horizontal="2%" data-width="96%" 
					data-show-transition="down" data-show-delay="400" data-hide-transition="up">
					test5 <span class="hide-small-screen">test5</span> <span class="hide-medium-screen">test5</span>
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="/resources/src/css/images/blank.gif"
					data-src="/resources/src/css/images/test6.jpg"
					data-retina="/resources/src/css/images/test6.jpg"/>

				<p class="sp-layer sp-white sp-padding" 
					data-horizontal="10" data-vertical="10" data-width="35%">
					test6 <span class="hide-small-screen">test6</span> <span class="hide-medium-screen">test6</span>
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="/resources/src/css/images/blank.gif"
					data-src="/resources/src/css/images/test7.jpg"
					data-retina="/resources/src/css/images/test2.jpg"/>

				<p class="sp-layer sp-black sp-padding" 
					data-position="bottomLeft" data-vertical="10" data-horizontal="2%" data-width="96%" 
					data-show-transition="up" data-show-delay="400" data-hide-transition="down">
					test7 <span class="hide-small-screen">test7</span> <span class="hide-medium-screen">test7</span>
				</p>
			</div>

		<div class="sp-thumbnails">
			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">가케 우동</div>
				<div class="sp-thumbnail-description">가장 일반적인 우동</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">test2</div>
				<div class="sp-thumbnail-description">test2</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">test3</div>
				<div class="sp-thumbnail-description">test3</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">test4</div>
				<div class="sp-thumbnail-description">test4</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">test5</div>
				<div class="sp-thumbnail-description">test5</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">test6</div>
				<div class="sp-thumbnail-description">test6</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">test7</div>
				<div class="sp-thumbnail-description">test7</div>
			</div>
		</div>
		</div>
    </div>
	<!-- 테스트 end -->

	<!-- about_area -->
	<div class="about_area">
		<h2>
			<b>실시간 리뷰</b>
		</h2>
		<div class="about_box">
				<ul class="place_list box_inner clear">
					<c:forEach items="${boardList}" var="boardVO" varStatus="status">
						<c:if test="${status.count <= 3}">
						<li><a href="/board/view?bno=${boardVO.bno}&page=1">
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
						<li><a href="/board/view?bno=${boardVO.bno}&page=1">${boardVO.title}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- //app_area -->

</div>
<!-- //container -->
<script type="text/javascript" src="/resources/dist/js/jquery.sliderPro.min.js"></script>
<script type="text/javascript">
$( document ).ready(function( $ ) {
		$( '#example1' ).sliderPro({
			width: 1230,
			height: 600,
			arrows: true,
			buttons: false,
			waitForLayers: true,
			thumbnailWidth: 200,
			thumbnailHeight: 100,
			thumbnailPointer: true,
			autoplay: true,
			autoScaleLayers: false,
			breakpoints: {
				500: {
					thumbnailWidth: 120,
					thumbnailHeight: 50
				}
			}
		});
	});
</script>
<%@ include file="include/footer.jsp"%>
