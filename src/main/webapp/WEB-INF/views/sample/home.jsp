<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scaleable=no">
<title>HOME</title>
<link rel="shortcut icon" href="/images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="/images/favicon/home-touch-icon.png">
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/user.css">
<style>
.go_top {
	position: fixed;
	right: 20px;
	bottom: 112px;
	text-align: center;
	background: orange;
	z-index: 100;
	padding: 20px;
	opacity: 0.7;
	color: blue!importent;
	font-family: "Nanum Gothic", "NanumGothic" !important;
}

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
/* 구글 나눔폰트 가져오기 */
body, h1, h2, h3, p {
	font-family: "Nanum Gothic", "NanumGothic" !important;
}
</style>
<script src="/resources/js/jquary.min.js"></script>
<script src="/resources/js/common.js"></script>
<!-- 사용자 스크립트 -->
<script>
	
</script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- 더미 데이터:CSS작업전 내용 -->

	<div id="wrap">
		<header class="header cfixed">
			<h1 class="logo">
				<a href="">LOGO</a>
			</h1>
			<nav>
				<ul class="gnb">
					<li><a href="/#sample">HOME</a></li>
					<li><a href="/#weare">WE ARE</a></li>
					<li><a href="/#work">WORK</a></li>
					<li><a href="/#blog">BLOG</a></li>
					<li><a href="/#contactus">CONTACT US</a></li>
				</ul>
			</nav>
			<span class="menu-toggle-btn"> <span></span> <span></span> <span></span>
			</span>
		</header>
		</section>
		<article class="slider">
			<img src="/resources/images/sun.jpg" alt="">
		</article>
		<section class="content">

			<section class="display-section">
				<div class="container">
					<h2 class="sec-tit" id="weare">WE ARE</h2>
					<p class="desc">
						"휴먼 교육센터 디지털 컨버전스 과정 입니다." <br> "그리고, 지금은 화면 설계 시간 입니다."
					</p>
				</div>
			</section>
			<section class="promotion-section">
				<div class="container">
					<ul class="promo-list">
						<li><a href="#" onclick="return false"> <img
								src="/resources/images/sun.jpg" alt="">
								<h3>HOME</h3>
								<p>휴면 교육센터 디지털 컨버전스 과정 입니다.</p>
						</a></li>
						<li><a href="#" onclick="return false"> <img
								src="/resources/images/sun.jpg" alt="">
								<h3>HOME</h3>
								<p>휴면 교육센터 디지털 컨버전스 과정 입니다.</p>
						</a></li>
						<li><a href="#" onclick="return false"> <img
								src="/resources/images/sun.jpg" alt="">
								<h3>HOME</h3>
								<p>휴면 교육센터 디지털 컨버전스 과정 입니다.</p>
						</a></li>
						<li><a href="#" onclick="return false"> <img
								src="/resources/images/sun.jpg" alt="">
								<h3>HOME</h3>
								<p>휴면 교육센터 디지털 컨버전스 과정 입니다.</p>
						</a></li>
					</ul>
				</div>
			</section>
			<section class="work-section cfixed">
				<h2 class="sec-tit" id="work">WORK</h2>
				<ul class="work-list">
					<li><a href="#none">
							<div class="info">
								<h3>작업1</h3>
								<span>소스/작업1</span>
							</div> <img src="/resources/images/sun.jpg" alt="">
					</a></li>
					<li><a href="#" onclick="return false">
							<div class="info">
								<h3>작업1</h3>
								<span>소스/작업1</span>
							</div> <img src="/resources/images/sun.jpg" alt="">
					</a></li>
					<li><a href="#" onclick="return false">
							<div class="info">
								<h3>작업1</h3>
								<span>소스/작업1</span>
							</div> <img src="/resources/images/sun.jpg" alt="">
					</a></li>
					<li><a href="#" onclick="return false">
							<div class="info">
								<h3>작업1</h3>
								<span>소스/작업1</span>
							</div> <img src="/resources/images/sun.jpg" alt="">
					</a></li>
					<li><a href="#" onclick="return false">
							<div class="info">
								<h3>작업1</h3>
								<span>소스/작업1</span>
							</div> <img src="/resources/images/sun.jpg" alt="">
					</a></li>
					<li><a href="#" onclick="return false">
							<div class="info">
								<h3>작업1</h3>
								<span>소스/작업1</span>
							</div> <img src="/resources/images/sun.jpg" alt="">
					</a></li>
					<li><a href="#" onclick="return false">
							<div class="info">
								<h3>작업1</h3>
								<span>소스/작업1</span>
							</div> <img src="/resources/images/sun.jpg" alt="">
					</a></li>
					<li><a href="#" onclick="return false">
							<div class="info">
								<h3>작업1</h3>
								<span>소스/작업1</span>
							</div> <img src="/resources/images/sun.jpg" alt="">
					</a></li>
				</ul>
			</section>
			<section class="blog-section">
				<div class="container">
					<h2 class="sec-tit" id="blog">BLOG</h2>
					<ul class="blog-list">
						<li><a href="#" onclick="return false"><img
								src="/resources/images/sun.jpg" alt=""></a> <time
								datetime="2016-10-30">OCT 30, 2016</time> <a href=""><h3>타임스페이스는
									사용자 중심의 웹페이지를 제작하는 회사 입니다.</h3></a></li>
						<li><a href="#" onclick="return false"><img
								src="/resources/images/sun.jpg" alt=""></a> <time
								datetime="2016-10-30">OCT 30, 2016</time> <a href=""><h3>타임스페이스는
									사용자 중심의 웹페이지를 제작하는 회사 입니다.</h3></a></li>
						<li><a href="#" onclick="return false"><img
								src="/resources/images/sun.jpg" alt=""></a> <time
								datetime="2016-10-30">OCT 30, 2016</time> <a href=""><h3>타임스페이스는
									사용자 중심의 웹페이지를 제작하는 회사 입니다.</h3></a></li>
					</ul>
				</div>
			</section>
			<section class="contact-section">
				<div class="container">
					<h2 class="sec-tit" id="contactus">CONTACT</h2>
					<div class="form-box">
						<form action="" method="">
							<fieldset class="cfixed">
								<legend class="blind">CONTACT US</legend>
								<div class="form">
									<label for="name" class="blind">name</label> <input type="text"
										id="name" placeholder="Name"> <label for="phone"
										class="blind">phone</label> <input type="tel" id="phone"
										placeholder="Phone"> <label for="email" class="blind">email</label>
									<input type="email" id="email" placeholder="Email Address">
								</div>
								<div class="textarea">
									<label for="message" class="blind">message</label>
									<textarea name="message" id="message" placeholder="Message"></textarea>
								</div>
							</fieldset>
							<div class="send-btn">
								<button type="button" class="" data-toggle="modal"
									data-target="#exampleModal">메세지 보내기</button>
							</div>
						</form>
					</div>
				</div>
			</section>
			<footer class="footer">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3190.4287630290924!2d127.03674821563514!3d36.90401166954805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b215543c1914d%3A0x14b646963ad73a3d!2z7JuQ6rOo64aN7JuQ!5e0!3m2!1sko!2skr!4v1590998887130!5m2!1sko!2skr"
					width="600" height="450" frameborder="0" style="border: 0;"
					allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
				<p class="copyright">LOGO</p>
			</footer>
	</div>
	<p class="go_top">
		<a href="#" class="s_point">TOP</a>
	</p>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				<input class="form-control" type="text" id="message" placeholder="메세지 내용을 입력해주세요."></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info">수정</button>
					<button type="button" class="btn btn-danger">삭제</button>
					<button type="button" class="btn btn-light" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>