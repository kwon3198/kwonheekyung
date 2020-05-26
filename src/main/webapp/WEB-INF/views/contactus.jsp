<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scaleable=no">
<title>CONTACT US</title>
<link rel="shortcut icon" href="/images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="/images/favicon/home-touch-icon.png">
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<style>
/* CONTACT US 영역 CSS */
.contact-section{
margin-top:109px;
}
.contact-section .sec-tit{
margin-bottom:47px;
text-align:center;
}
.contact-section .form-box .form input{
    width: 100%;
    background: transparent;
    line-height: 1.2;
    padding: 0 2px;
    height: 50px;
    outline: none;
    border: none;
    border-bottom: 2px solid #dbdbdb;
}
.blind{ /* 라벨 태그 숨기기 */
position:absolute;
width:0;
height:0;
line-height:0;
text-indent:-9999px;
overflow:hidden;
}
.contact-section .form-box .textarea textarea{
    width: 100%;
    background: transparent;
    line-height: 1.2;
    outline: none;
    border: none;
    border-bottom: 2px solid #dbdbdb;
    min-height: 150px;
    padding-top: 13px;
    padding-bottom: 13px;
}
.contact-section .form-box .send-btn{
margin-top:36px;
text-align:right;
}
.contact-section .form-box .send-btn button{
padding:15px;
margin:0;
border:0;
font-size:12px;
color:#fff;
background:#3f51b5;
font-family:'Montserrat';
cursor:pointer;
}
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
		<iframe src="https://www.google.com/maps/embed?pb=
		!1m14!1m8!1m3!1d3193.6236240130715!2d127.141055!3d36.827538!3m2!1i1024!2
		i768!4f13.1!3m3!1m2!1s0x357b2863c5bb6bb5%3A0x1bc123fe0c4b4510!2z7Zy066i8
		6rWQ7Jyh7IS87YSw!5e0!3m2!1sko!2skr!4v1590481466431!5m2!1sko!2skr" width="600" 
		height="450" frameborder="0" style="border:0;" allowfullscreen="" 
		aria-hidden="false" tabindex="0"></iframe>
			<p class="copyright">LOGO</p>
		</footer>
	</div>
</body>
</html>