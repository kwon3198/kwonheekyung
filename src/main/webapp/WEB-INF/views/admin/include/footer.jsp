<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <button type="button" class="btn btn-primary btn-lg btn-block">로그아웃</button>
    </div>
  </aside>
  <!-- /.control-sidebar -->
<!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2014-2020 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/adminlte.min.js"></script>
<!-- footer.jsp 하단에 저장 : 아래 [클래스명을입력]부분을 학생이 채우세요... -->
<script>
$(document).ready(function() {
    var current = location.pathname;
    $('.nav-treeview li a').each(function(){
        var $this = $(this);
        if(current=="/admin"||current=="/admin/") {
        	
        }else{
        //if($this.attr('href').includes(current) == true){
        	if($this.attr('href').indexOf(current) != -1){
            $this.addClass('active');
        }else{
        	$this.removeClass('active');
        }
        }
    })
 });
</script>
<style>
[class*=sidebar-dark] .brand-link {
    background-color: #007bff !important;
    }
    .navbar-white {
    background-color: #007bff !important;
}
</style>
</body>
</html>