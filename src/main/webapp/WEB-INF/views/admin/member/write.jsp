<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
								<h3 class="card-title">회원가입</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<label for="exampleInputEmail1">아이디</label> <input
										type="userid" class="form-control" id="exampleInputEmail1"
										placeholder="Enter userid">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">비밀번호</label> <input
										type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">사용자 이름</label> <input
										type="username" class="form-control"
										id="exampleInputPassword1" placeholder="username">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">이메일</label> <input
										type="email" class="form-control" id="exampleInputPassword1"
										placeholder="email">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">포인트</label> <input
										type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Point">
								</div>
								<div class="form-group">
									<label>enabled</label> <select class="form-control">
										<option>false</option>
										<option>true</option>
									</select>
								</div>
									<div class="form-group">
									<label>level</label> <select class="form-control">
										<option>ROLE_USER</option>
										<option>ROLE_USER 2</option>
										<option>ROLE_USER 3</option>
									</select>
								</div>
								<div class="card-body">
									<button type="button"
										class="btn btn-success toastrDefaultSuccess"
										style="background-color: #ffc107;">
										Submit
										<style background-color:="" #ffc107="" !important;=""></style>
									</button>
									<button type="button" class="btn btn-info toastrDefaultInfo">
										LIST ALL</button>
								</div>
							</div>
							</div>
						</div>
					</div>
					<!-- /.container-fluid -->
				</div>
			</div>
			<!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp" %>