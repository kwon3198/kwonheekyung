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
							<h1 class="m-0 text-dark">READ BOARD</h1>
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
							<!-- /.card-header -->
							<div class="card-body">
							<form role="form" action="/admin/board/delete" method="post">
								<div class="form-group">
									<label>제목</label> <br> ${boardVO.title}
								</div>
								<div class="form-group">
									<label>내용</label>
									<br>
									<textarea name="content" class="form-control" 
									rows="3" placeholder="Enter ...">${boardVO.content}</textarea> 
								</div>
								<div class="form-group">
									<label>작성자</label> <br> ${boardVO.writer}
								</div>
								<div class="form-group">
									<label>FileDownload</label> <br>
									<a href="/download?filename=${boardVO.files[0]}">${boardVO.files[0]}</a>
								</div>
							</div>
							<!-- /.container-fluid -->
							<div class="card-body">
								<a href = "/admin/board/update?bno=${boardVO.bno}&page=${pageVO.page}"
									class="btn btn-warning toastrDefaultWarning">UPDATE</a>
								<button type="submit" class="btn btn-danger toastrDefaultError">
									DELETE</button>
								<a href = "/admin/board/list?page=${pageVO.page}" class="btn btn-info toastrDefaultInfo">
									LIST ALL</a>
							</div>
						</div>

						<!-- 2번쨰 -->
						<div class="col-md-12">
							<!-- jquery validation -->
							<div class="card card-primary">
								<div class="col-sm-6">
									<h1 class="m-0 text-dark">ADD NEW REPLY</h1>
								</div>
								<!-- form start -->
								<form role="form" id="quickForm" novalidate="novalidate">
									<div class="card-body">
										<div class="form-group">
											<label for="exampleInputEmail1">Writer</label> <input
												type="email" name="email" class="form-control"
												id="exampleInputEmail1" placeholder="USER ID">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Reply text</label> <input
												type="password" name="password" class="form-control"
												id="exampleInputPassword1" placeholder="REPLY TEXT">
										</div>
									</div>
									<!-- /.card-body -->
									<div class="card-footer">
										<button type="submit" class="btn btn-primary">ADD
											REPLY</button>
									</div>
							</div>
							<!-- /.card -->
						</div>
						<div class="timeline">
							<!-- timeline time label -->
							<div class="time-label">
								<span class="bg-green">Replies List[1]</span>
							</div>
							<!-- /.timeline-label -->
							<!-- timeline item -->
							<div>
								<i class="fas fa-comments bg-blue"></i>
								<div class="timeline-item">
									<span class="time"><i class="fas fa-clock"></i> 12:05</span>
									<h3 class="timeline-header">
										<a href="#">26</a> -test
									</h3>

									<div class="timeline-body">댓글 테스트 입니다.</div>
									<div class="timeline-footer">
										<a class="btn btn-primary btn-sm">Modify</a>
									</div>
								</div>
							</div>
							<ul class="pagination justify-content-center m-0">
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<input type="hidden" name="bno" value="${boardVO.bno}">
			</form>
		</div>
<%@ include file="../include/footer.jsp" %>