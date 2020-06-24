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
							<h1 class="m-0 text-dark">READ Member</h1>
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
								<label>user-id</label> <input type="text" class="form-control"
									placeholder="user02" disabled="">
							</div>
							<div class="form-group">
								<label>user-name</label> <input type="text" class="form-control"
									placeholder="user02" disabled="">
							</div>
							<div class="form-group">
								<label>email</label> <input type="text" class="form-control"
									placeholder="user02@test.com" disabled="">
							</div>

							<div class="form-group">
								<label>point</label> <input type="text" class="form-control"
									placeholder="0" disabled="">
							</div>
							<div class="form-group">
								<label>enamled</label> <input type="text" class="form-control"
									placeholder="true" disabled="">
							</div>
							<div class="form-group">
								<label>level</label> <input type="text" class="form-control"
									placeholder="ROLE_ADMIN" disabled="">
							</div>
						</div>
						<!-- /.container-fluid -->
						<div class="card-body">
							<button type="button"
								class="btn btn-warning toastrDefaultWarning">UPDATE</button>
							<button type="button" class="btn btn-danger toastrDefaultError">
								DELETE</button>
							<button type="button" class="btn btn-info toastrDefaultInfo">
								LIST ALL</button>
						</div>
					</div>
				</div>
			</div>
		</div>
<%@ include file="../include/footer.jsp" %>