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

					<!-- /.row -->
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">게시판 검색</h3>
								</div>
								<!-- 게시판 검색창 -->
								<form action="/admin/board/list"
									style="border-bottom: 20px solid rgba(0, 0, 0, .125); padding: .75rem 1.25rem;">
									<select name="searchType">
										<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
										<option value="all">전체</option>

									</select> <input name="searchKeyword" value=""> 
									<input type="submit" value="검색">
								</form>
								<!-- /.card-header -->
								<div class="card-body table-responsive p-0">
									<table class="table table-hover text-nowrap">
										<thead>
											<tr>
												<th>BNO</th>
												<th>TITLE</th>
												<th>WRITER</th>
												<th>REGDATE</th>
												<th>VIEWCNT</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${boardList}" var="boardVO" varStatus="status">
											<tr>
												<td>${boardVO.bno}</td>
												<td><a href="/admin/board/view?bno=${boardVO.bno}&page=${pageVO.page}">${boardVO.title}</a></td>
												<td>${boardVO.writer}</td>
												<td>${boardVO.regdate}</td>
												<td><span class="right badge badge-danger">${boardVO.view_count}</span></td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
					</div>
					<nav aria-label="Contacts Page Navigation">
					<a href = "/admin/board/write" class="btn btn-info toastrDefaultInfo">CREATE</a>
					<ul class="pagination" style="position:relative;left:40%;">
					<c:if test="${pageVO.prev}">
					<li class="page-item">
					<a class="page-link" href="/admin/board/list?page=${pageVO.startPage - 1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">이전</a>
					</li>
					</c:if>
					<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
					 <li class='page-item <c:out value="${idx==pageVO.page?'active':''}"/>'><a href="/admin/board/list?page=${idx}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="page-link">${idx}</a></li>
					</c:forEach>
					<c:if test="${pageVO.next}">
					<li class="page-item">
					<a class="page-link" href="/admin/board/list?page=${pageVO.endPage + 1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">다음</a>
					</li>
					</c:if>
             </ul>
             </nav>
				</div>
				<!-- /.container-fluid -->
			</div>
			</ul>
		</div>
<%@ include file="../include/footer.jsp" %>