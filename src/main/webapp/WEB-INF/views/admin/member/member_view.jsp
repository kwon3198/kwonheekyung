<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp" %>
<script>
if('${msg}' == "success"){
	alert("수정에 성공하엿습니다.!");
}
</script>
<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">READ Member${msg}</h1>
						</div>
					</div>
					<!-- /.row -->
				</div>

				<div class="col-md-12">
					<!-- general form elements disabled -->
					<div class="card card-warning">
						<!-- /.card-header -->
						<div class="card-body">
							<div class="form-group">
								<label>user-id</label> <br> ${memberVO.user_id} 
							</div>
							<div class="form-group">
								<label>user-name</label> <br> ${memberVO.user_name}
							</div>
							<div class="form-group">
								<label>email</label> <br> ${memberVO.email}
							</div>

							<div class="form-group">
								<label>point</label> <br> ${memberVO.point}
							</div>
							<div class="form-group">
								<label>enabled</label> <br> ${memberVO.enabled}
							</div>
							<div class="form-group">
								<label>levels</label> <br> ${memberVO.levels}
							</div>
						</div>
						<!-- /.container-fluid -->
						<div class="card-body">
							<a href = "/admin/member/update?user_id=${memberVO.user_id}"
								class="btn btn-warning toastrDefaultWarning">UPDATE</a>
							<button type="button" class="btn btn-danger toastrDefaultError">
								DELETE</button>
							<a href="/admin/member/list" class="btn btn-info toastrDefaultInfo">
								LIST ALL</a>
						</div>
					</div>
				</div>
			</div>
		</div>
<%@ include file="../include/footer.jsp" %>