<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>근무지 리스트</h1>
		<ol class="breadcrumb">
			<li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Notice</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">근무지 목록</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-sm-6">
							지역구 
								<select>
									<option>종로구</option>
									<option>영등포구</option>
									<option>강남구</option>
									<option>용산구</option>
								</select>
							</div>
							<div class="col-sm-6"></div>
						</div>
						<table id="buildingListTable"
							class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>건물번호</th>
									<th>건물이름</th>
									<th>주소</th>
									<th>우편번호</th>
									<th>삭제하기</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list }" var="building">
									<tr>
										<td>${building.buildNo }</td>
										<td>${building.buildName }</td>
										<td>${building.buildAddr }</td>
										<td>${building.buildPost }</td>
										<td><input type="button" class="btn btn-danger btn-sm" value="삭제하기" id = "buildingDeleteBtn"></td>
									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<th>Rendering engine</th>
									<th>Browser</th>
									<th>Platform(s)</th>
									<th>Engine version</th>
									<th><input type="button" class="btn btn-primary" value="근무지 등록하기" id="buildingInsertBtn"  onclick="location.href='/building/buildingInsertForm'"></th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- page script -->
<script>
	$(document).ready(function(){
		$('#example1').DataTable()
		$('#buildingListTable').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : true,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		})
		
	})

</script>