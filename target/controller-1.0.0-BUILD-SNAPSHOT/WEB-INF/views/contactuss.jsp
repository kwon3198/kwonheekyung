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
<style>

</style>
<script src="/resources/js/jquary.min.js"></script>
<script src="/resources/js/common.js"></script>
<!-- 사용자 스크립트 -->
<script>

</script>
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
					<li><a href="/">HOME</a></li>
					<li><a href="/weare">WE ARE</a></li>
					<li><a href="/work">WORK</a></li>
					<li><a href="/blog">BLOG</a></li>
					<li><a href="/contactus">CONTACT US</a></li>
				</ul>
			</nav>
			<span class="menu-toggle-btn"> <span></span> <span></span> <span></span>
			</span>
		</header>
		<section class="contact-section">
                <div class="container">
                    <h2 class="sec-tit">CONTACT</h2>
                    <div class="form-box">
                        <form action="" method="">
                            <fieldset class="cfixed">
                                <legend class="blind">CONTACT US</legend>
                                <div class="form">
                                    <label for="name" class="blind">name</label>
                                    <input type="text" id="name" placeholder="Name">
                                    <label for="phone" class="blind">phone</label>
                                    <input type="tel" id="phone" placeholder="Phone">
                                    <label for="email" class="blind">email</label>
                                    <input type="email" id="email" placeholder="Email Address">
                                </div>
                                <div class="textarea">
                                    <label for="message" class="blind">message</label>
                                    <textarea name="message" id="message" placeholder="Message"></textarea>
                                </div>
                            </fieldset>
                            <div class="send-btn">
                                <button>메세지 보내기</button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
		<footer class="footer">
			<p class="copyright">LOGO</p>
		</footer>
	</div>
</body>
</html>