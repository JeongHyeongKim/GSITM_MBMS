<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="../../../resources/dist/js/postSearch.js"></script>

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
						<table id="buildingListTable"
							class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>건물번호</th>
									<th>건물이름</th>
									<th>주소</th>
									<th>우편번호</th>
									<th>비고</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list }" var="building">
									<tr>
										<td>${building.buildNo }</td>
										<td>${building.buildName }</td>
										<td>${building.buildAddr }</td>
										<td>${building.buildPost }</td>
										<td>
											<button type="button" class="btn btn-info btn-sm"
												data-toggle="modal"
												data-target="#modal-info_${building.buildNo }">
												회의실정보</button> 
												<input type="button" class="btn btn-warning btn-sm"
											data-toggle="modal"
											data-target="#modal-warning_${building.buildNo}" value="수정하기">

											<input type="button" class="btn btn-danger btn-sm"
											data-toggle="modal"
											data-target="#modal-danger_${building.buildNo}" value="삭제하기">


											<div class="modal modal-danger fade"
												id="modal-danger_${building.buildNo}">
												<!-- 삭제 modal div -->
												<!-- Modal Div -->
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
															<h4 class="modal-title">근무지 삭제하기</h4>
														</div>
														<div class="modal-body">
															<p>${building.buildName }을정말로삭제하시겠습니까?&hellip;</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-outline pull-left"
																data-dismiss="modal">취소</button>
															<button type="button" class="btn btn-outline"
																onclick="location.href='/building/buildingDelete?buildNo=${building.buildNo}'">삭제하기</button>
														</div>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal-dialog -->
											</div> <!-- /.modal -->
										</td>
									</tr>

									<div class="modal modal-info fade"
										id="modal-info_${building.buildNo }">
										<!-- 건물 상세보기 modal div -->
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
													<h4 class="modal-title">${building.buildName }회의실내역</h4>
												</div>
												<div class="modal-body">
													
														<ul>
														<c:forEach items="${building.rooms }" var="room">
															<c:if test="${room.roomName==null }">
																[ ${building.buildName } ] 지사에 존재하는 회의실이 없습니다.
															</c:if>
															<c:if test="${room.roomName!=null }">
																<li>[ ${room.roomName } ] 회의실</li>
															</c:if>
														</c:forEach>
														</ul>
													
													
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-outline pull-left"
														data-dismiss="modal">닫기</button>

												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
									</div>
									<!-- /.modal -->
									
									<div class="modal modal-default fade"
										id="modal-warning_${building.buildNo}">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
													<h4 class="modal-title">Warning Modal</h4>
												</div>
												<div class="modal-body">
													<form role="form" action="/building/buildingUpdate"
														method="post">
														<!-- text input -->
														<div class="form-group">
															<input type="hidden" name="buildNo"
																value="${building.buildNo }"> <label>근무지이름</label>
															<input type="text" class="form-control" name="buildName"
																placeholder="${building.buildName }">
														</div>

														<label>우편 번호</label>
														<div class="row">
															<div class="col-xs-3">
																<input type="text" class="form-control" name="buildPost"
																	placeholder="${building.buildPost }"
																	onclick="execPostCode();">
															</div>
															<div class="col-xs-4">
																<input type="button" class="btn btn-default"
																	value="검색하기" onclick="execPostCode();">
															</div>
														</div>

														<div class="form-group">
															<label>근무지 주소</label>
															<div class="row">
																<div class="col-xs-7">
																	<input type="text" class="form-control"
																		name="buildAddr" placeholder="${building.buildAddr }"
																		onclick="execPostCode();">
																</div>
															</div>
														</div>

														<div class="form-group" align=center>
															<input type="submit" class='btn btn-success' value="수정완료">
															<input type="reset" class='btn btn-danger' value="수정취소">
															<input type="button" class='btn btn-default' value="뒤로가기"
																onClick="history.back();">
														</div>
													</form>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-outline pull-left"
														data-dismiss="modal">Close</button>
													<button type="button" class="btn btn-outline">Save
														changes</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
									</div>
									<!-- /.modal -->
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>Rendering engine</th>
									<th>Browser</th>
									<th>Platform(s)</th>
									<th>Engine version</th>
									<th><input type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#modal-default_buildInsert"
										value="근무지등록하기" /></th>
								</tr>
							</tfoot>
						</table>
						<jsp:include page="../modal/Modal.jsp"></jsp:include>
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
	$(document).ready(function() {
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