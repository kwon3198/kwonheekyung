<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp" %>
<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">Starter Page</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Starter Page</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
					<div class="col-md-12">
						<!-- general form elements disabled -->
						<div class="card card-warning">
							<div class="card-header">
								<h3 class="card-title">회원수정</h3>
							</div>
							<div class="card-body">
							<form role="form" action="/admin/member/update" method="post">
								<div class="form-group">
									<label>아이디</label> 
									<br>${memberVO.user_id}
									<input	
										value="${memberVO.user_id}" name="user_id" type="hidden" class="form-control"
										placeholder="Enter userid">
								</div>
								<div class="form-group">
									<label>비밀번호</label> <input
										value="" name="user_pw" type="password" class="form-control"
										placeholder="${memberVO.user_pw}">
								</div>
								<div class="form-group">
									<label>사용자 이름</label> <input
										value="${memberVO.user_name}" name="user_name" type="username" class="form-control"
										placeholder="username">
								</div>
								<div class="form-group">
									<label>이메일</label> <input
										value="${memberVO.email}" name="email" type="email" class="form-control"
										placeholder="email">
								</div>
								<div class="form-group">
									<label >포인트</label> <input
										value="${memberVO.point}" name="point" type="point" class="form-control"
										placeholder="Point">
								</div>
								<div class="form-group">
									<label>enabled</label> 
									<select name="enabled" class="form-control">
										<option value="0" <c:out value="${memberVO.enabled eq 'false'?'selected':''}"/>>false</option>
										<option value="1" <c:out value="${memberVO.enabled eq 'true'?'selected':''}"/>>true</option>
									</select>
								</div>
									<div class="form-group">
									<label>level</label> 
									<select name="levels" class="form-control">
										<option value="ROLE_USER"
										<c:out value="${memberVO.levels eq 'ROLE_USER'?	'selected':'' }"/>>ROLE_USER</option>
										<option value="ROLE_ADMIN"
										<c:out value="${memberVO.levels eq 'ROLE_ADMIN'? 'selected':'' }"/>>ROLE_ADMIN</option>
									</select>
								</div>
								<div class="card-body">
									<button type="submit"
										class="btn btn-success toastrDefaultSuccess"
										style="background-color: #ffc107;">
										Submit
									</button>
									<a href = "/admin/member/list?page=${pageVO.page}" class="btn btn-info toastrDefaultInfo">
										LIST ALL</a>
								</div>
							</div>
							</div>
							<input type = "hidden" name="page" value="${pageVO.page}">
						</div>
						</form>
					</div>
					<!-- /.container-fluid -->
				</div>
			</div>
			<!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp" %>