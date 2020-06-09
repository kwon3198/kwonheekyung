<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>html 테스트 입니다.</title>
</head>
<body>
	<h1>HTML 이란?</h1>
	<H2>HTML 의 역사</H2>
	<H3>팀 버너스리에 대해</H3>
	<H4>HTML 의 태그</H4>
	<H5>HTML 의 태그</H5>
	<a href="/htmltset">페이지 다시 로딩-불러오기</a>
	<img src="/resources/images/sun.jpg" alt="sunset photo">
	<p>

		<strong>이것은</strong> 문단입니다.<br> <b>이것은</b> 문단입니다.
	</p>
	<p>이것은&nbsp;&nbsp;&nbsp;&nbsp; &amp; &lt; &gt; &copy;
		&nbsp;&nbsp;&nbsp;&nbsp;특수문자 입니다.
	<hr>
	이것은 문단입니다.
	</p>
	<ul>
		<li>리스트 1</li>
		<li>리스트 2</li>
	</ul>
	<ol>
		<li>리스트1</li>
		<li>리스트2</li>
	</ol>
	<div>
		<h2>회원가입폼 입니다.</h2>
		<form method="get" action="/htmltest">
			성별을 선택해 주세요 <select name="gender">
				<option value="M">남자</option>
				<option value="F">여자</option>
			</select> <br> <input type="text" name="userid"
				placeholder="아이디를 입력해 주세요"> <input type="password"
				name="password" placeholder="비밀번호를 입력해 주세요"> <br> <input
				type="file" name="upload_file">
			<textarea name="contents" cols="100" rows="5">여기에 정보를 입력해 주세요 </textarea>
			<input type="submit" name="submit" value="회원가입" class="login">
		</form>
	</div>
	<br>
	<table summary="00학교 00반 성적표" style="border: 1px solid black">
	<cpation>이 테이블은 학생들의 성적표 입니다.</cpation>
	<tr>
		<th>이름</th>
		<th>성적</th>
	</tr>
	<tr>
		<td>권희경</td>
		<td>15</td>
	</tr>
	<tr>
		<td colspan="2">bbb</td>
	</tr>
	<tr>
		<td>ccc</td>
		<td>15</td>
	</tr>
	</table>
	
</body>
</html>