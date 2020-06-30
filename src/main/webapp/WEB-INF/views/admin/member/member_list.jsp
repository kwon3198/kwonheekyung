<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">DashBoard Mangement</h1>
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
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">멤버 검색</h3>
							<div class="card-tools"></div>
						</div>
						<!-- 게시판 검색창 -->
						<form name="form1" method="post" action="/admin/member/list"
							style="border-bottom: 20px solid rgba(0, 0, 0, .125); padding: .75rem 1.25rem;">
							<select name="searchOption">
								<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
								<option value="all">---</option>
								<option value="writer">이름</option>
								<option value="content">내용</option>
								<option value="title">제목</option>
							</select> <input name="keyword" value=""> <input type="submit"
								value="검색">
							<button type="button" id="btnWrite">새사용자등록</button>
						</form>
						<!-- /.card-header -->
						<div class="card-body table-responsive p-0">
							<table class="table table-hover text-nowrap">
								<thead>
									<tr>
										<th>user_id</th>
										<th>user_name[point]</th>
										<th>email</th>
										<th>Use</th>
										<th>REGDATE</th>
										<th>lever</th>
									</tr>
								</thead>
								<tbody>
									
									<c:forEach items="${memberList}" var="memberVO" varStatus="status">
									<tr>
										<td>${memberVO.user_id}</td>
										<td><a href="/admin/member/view?user_id=${memberVO.user_id}">${memberVO.user_name}</a></td>
										<td>${memberVO.email}</td>
										<td><span class="tag tag-success">${memberVO.enabled}</span></td>
										<td>${memberVO.reg_date}</td>
										<td><small class="badge badge-info">${memberVO.levels}</small></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
					<a href = "/admin/member/write" class="btn btn-info toastrDefaultInfo">CREATE</a>
					<ul class="pagination justify-content-center m-0">
						<li class="page-item active"><a class="page-link" href="#">1</a></li>

					</ul>
				</div>
			</div>

		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>