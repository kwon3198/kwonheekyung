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
												type="text" id="replyerInput" class="form-control"
												id="exampleInputEmail1" placeholder="USER ID">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Reply text</label> <input
												type="text" id="replytextInput" class="form-control"
												id="exampleInputPassword1" placeholder="REPLY TEXT">
										</div>
									</div>
									<!-- /.card-body -->
									<div class="card-footer">
										<a href="javascript:;" id="insertApplyBtn" class="btn btn-primary">ADD
											REPLY</a>
									</div>
							</div>
							</form>
							<!-- /.card -->
						</div>
						<div class="timeline">
							<!-- timeline time label -->
							<div class="time-label" id="replyDiv">
								<span class="bg-green">Replies List[1]</span>
							</div>
							<!-- /.timeline-label -->
							<!-- timeline item -->
							<!-- 댓글 리스트 반복문용 JQuery라이브러리 == jstl의 forEach같은 역활 -->
							<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
							<script id="template" type="text/x-handlebars-template">
							{{#each .}}
							<div class="replyLi" data-rno={{rno}}>
								<i class="fas fa-comments bg-blue"></i>
								<div class="timeline-item">
								<h3 class="timeline-header">
								<a href="#">{{rno}}-{{replyer}}</a></h3>
								<div class="timeline-body">{{replytext}}</div>
								<div class="timeline-footer">	
								<a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modifyModal">Modify</a>
									</div>
								</div>
							</div>
							{{/each}}
							</script>
							<script>
							//댓글 변수+함수 초기화
							var bno = ${boardVO.bno};
							//replyArr=JSON배열데이터,target=출력위치,tempplate=반복구문
							var printData = function(replyArr, target, templateObject){
							var template = Handlebars.compile(templateObject.html());
							var html = template(replyArr);
							$(".replyLi").remove();
							target.after(html);
							}
							function getPage(pageInfo) {
								$.getJSON(pageInfo, function(data){
									//console.log(data); // 디버그
									printData(data,$("#replyDiv"),$("#template"));
									//$("#modifyModal").modal('hide');
								});
							}
							//여기까지는 변수+함수를 정의하고  실제 사용은 아래부터 실행
							//댓글리스트 실행
							$(document).ready(function(){
								getPage("/reply/select/"+bno);
							});
							</script>
							
							<!-- 
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
							</div> -->
							
							<ul class="pagination justify-content-center m-0">
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<input type="hidden" name="bno" value="${boardVO.bno}">
		</div>
		<script>
		$(document).ready(function() {
			$("#insertApplyBtn").bind("click",function(){
				var replyer = $("#replyerInput").val();
				var replytext = $("#replytextInput").val();
				$.ajax({
					type:'post',
					url:'/reply/insert',
					headers: {
						"Content-Type":"application/json",
						"X-HTTP-Method-Override":"POST" 
					},
					dataType:'text',
					data:JSON.stringify({
						bno:bno,
						replyer:replyer,
						replytext:replytext
					}),
					success:function(result){
						if(result=='SUCCESS'){
							alert("등록 되었습니다.");
							getPage("/reply/select/" + bno);
							$("#replyerInput").val("");
							$("#replytextInput").val("");
						}
					}
				});
			});
		});
		</script>
		<script>
		$(document).ready(function(){
			//선택한 댓글에 대한 모달창에 데이터 바인딩
			$(".timeline").on("click", ".replyLi", function(event){
				var reply = $(this);
				$("#replytext").val(reply.find(".timeline-body").text());
				$(".modal-title").html(reply.attr("data-rno"));
			});
		});
		</script>
		<div id="modifyModal" class="modal modal-primary fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="display:block;">
	<button type="button" class="close" data-dismiss="modal">&times;</button>
	<h4 class="modal-title"></h4>
      </div>
      <div class="modal-body" data-rno>
	<p><input type="text" id="replytext" class="form-control"></p>
      </div>
      <div class="modal-footer">
	<button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
	<button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
      
    </div>
    
  </div>
</div>
<%@ include file="../include/footer.jsp" %>