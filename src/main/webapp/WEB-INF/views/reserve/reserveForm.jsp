<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>회의실 예약</h1>
		<ol class="breadcrumb">
			<li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">reserve</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-8">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">회의실 예약</h3>
					</div>
					<div class="box-body">
						<!-- 지사 선택 -->
						<div class="col-md-12">
							<div class="form-group">
								<div class="col-sm-6">
								<label for="buildingSelect">지사</label> 
									<select name="buildingSelect" id="buildingSelect" class="form-control">
										<c:forEach var="building" items="${buildings }" varStatus="status">
											<c:if test="${status.first}">
												<option value="${building.buildNo }" selected="selected">${building.buildName }</option>
											</c:if>
											<c:if test="${!status.first}">
												<option value="${building.buildNo }">${building.buildName }</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
								<div class="col-sm-6">
									<label for="roomSelect">회의실</label> 
									<select name="roomSelect" id="roomSelect" class="form-control">
										<option value="">전체</option>
									</select>
								</div>
	
								<!-- 회의유형 선택 -->
								<div class="col-sm-12">
									<label>회의구분</label> 
									<select name="category" id="meetingCategory" class="form-control">
										<option value="고객미팅">고객미팅</option>
									</select>
								</div>
							
								<div class="col-sm-12">
									<label>시작일</label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-calendar-o"></i>
										</div>
										<input type="text" class="form-control pull-right"
											id="reservationStartDate" readonly>
										<div class="input-group-addon">
					                    	<i class="fa fa-clock-o"></i>
					                    </div>
					                    <input type="text" id="reservationStartTime" class="form-control timepicker" readonly>
									</div>
									<!-- /.input group -->
								</div>
								<div class="col-sm-12">
									<label>종료일</label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-calendar-o"></i>
										</div>
										<input type="text" class="form-control pull-right"
											id="reservationEndDate" readonly>
										<div class="input-group-addon">
					                    	<i class="fa fa-clock-o"></i>
					                    </div>
					                    <input type="text" id="reservationEndTime" class="form-control timepicker" readonly>
									</div>
									<!-- /.input group -->
								</div>
					             
							</div>

							<!-- 참석인원 -->
							<div class="col-sm-12">
								<label>참석인원 및 명단</label>
								<div class="input-group">
									<span class="input-group-addon">참석인원</span> 
									<input type="number" placeholder="최대인원 (명)" class="form-control">
									<span class="input-group-addon"><i class="fa fa-users"></i></span>
									<input type="text" class="form-control" placeholder="참석자 명단">
									<div class="input-group-btn">
										<button class="btn btn-outline-secondary" type="button"><i class="fa fa-plus"></i></button>
									</div>
								</div>
							</div>
							
							<!-- 비품 신청 -->
							<div class="col-sm-12">
								<label>비품신청</label>
								<div class="input-group">
									<span class="input-group-addon">비품명</span> 
									<input type="text" placeholder="비품명" class="form-control" readonly>
									<span class="input-group-addon">수량</span>
									<input type="number" class="form-control" placeholder="수량" readonly>
									<div class="input-group-btn">
										<button class="btn btn-outline-secondary" type="button"><i class="fa fa-plus"></i></button>
									</div>
								</div>
							</div>
							
							<!-- 네트워크 사용 유무 -->
							<div class="col-sm-12">
								<label class="control-label">네트워크 유/무</label>
								<div class="col-sm-12">
									<label class="col-sm-6"> 
										<input type="radio" name="networkYn" class="minimal" checked> Yes
									</label>
									<label class="col-sm-6">
										<input type="radio" name="networkYn" class="minimal"> No
									</label>
								</div>
							</div>
	
							<!-- 다과준비 유무 -->
							<div class="col-sm-12">
								<label class="control-label">다과준비 유/무</label>
								<div class="col-sm-12">
									<label class="col-sm-6"> <input type="radio"
										name="snackYn" class="minimal" checked> Yes
									</label> <label class="col-sm-6"> <input type="radio"
										name="snackYn" class="minimal"> No
									</label>
								</div>
							</div>
							
							<!-- 사용 목적 -->
							<div class="col-sm-12">
								<div class="form-group">
									<label class="control-label">사용 목적</label>
									<textarea class="form-control" rows="5" ></textarea>
								</div>
								<br>
							</div>
	
							<div class="col-sm-12">
								<input type="button" class="btn  btn-info col-sm-12"
									id="availableRoomSearchBtn" value="검색">
							</div>
								
							

						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.col-md-12 -->
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

<link rel="stylesheet" href="/resources/plugins/datetimepicker/jquery.datetimepicker.css">
<script src="/resources/plugins/datetimepicker/jquery.datetimepicker.full.js"></script>
<script>
	$(function(){
		console.log('${reservationList}');
		
		//예약할 회의실 번호를 가지고 들어왔으면 초기세팅 
		if('${roomDTO}'!='') {
			$('#buildingSelect').val('${roomDTO.buildNo}');
			setRoomListInBuilding();
		}else {
			setRoomListInBuilding(0);
		}
		
		function setRoomListInBuilding(selectIndex) {
			$.ajax({
	            type : "POST",
	            url : "/reserve/roomSearch",
	            data : {"buildNo" : $('#buildingSelect').val(),
	                  "roomType" : ""},
	            dataType : "json",
	            success : function(data) {
	            	$('#roomSelect').empty();
	            	
	               $.each(data.rooms, function(index,item){
	                  $('<option/>', {
	                	  value : item.roomNo,
	                	  text : item.roomName
	                  }).appendTo($('#roomSelect'));
	               });
	               
	               $('#roomSelect').val('${roomDTO.roomNo}');
	               $('#roomSelect option:eq('+selectIndex+')').prop("selected", true);
	               
	               $('#roomSelect').trigger('change');
	            },
	            error : function(data) {
	               alert('error');
	            }
	        });
		}
		$('#buildingSelect').change(function(){
			setRoomListInBuilding(0);
		});
		
		//회의실 선택 시 관련 정보를 가져온다
		$('#roomSelect').change(function(){
			$.ajax({
	            type : "POST",
	            url : "/reserve/getReservationInfo",
	            data : {"buildNo" : $('#buildingSelect').val(),
	            		"roomNo" : $('#roomSelect').val(),
	            		"roomType" : ""},
	            dataType : "json",
	            success : function(data) {
	            	//회의실 변경 시 예약일 초기화
	            	
	            	alert(JSON.stringify(data));
	            },
	            error : function(data) {
	               alert('roomSelect click error!');
	            }
	        });
		});
		
		/** DatePicker **/
		//Date range picker with time picker
// 		$('#reservationStartDate').datepicker({
// 			minuteStep : 30,
// 			daysOfWeekDisabled : [0, 6],
// 			dateFormat : 'YYYY-MM-DD',
// 			minDate : new Date(),
// 			disabledHours: [0, 1, 2, 3, 4, 5, 6, 7, 8, 19, 20, 21, 22, 23, 24]
// 		});
		
// 		$('#reservationEndDate').datepicker({
// 			minuteStep : 30,
// 			daysOfWeekDisabled: [0, 6],
// 			useCurrent: false,
// 			disabledHours: [0, 1, 2, 3, 4, 5, 6, 7, 8, 19, 20, 21, 22, 23, 24]
// 		});
		
// 		$("#reservationStartDate").on("changeDate", function (e) {
//             $('#reservationEndDate').data('setEndDate', e.date);
//         });
		
		//회의실 검색에서 저장한 예약정보 설정
		var startDate = moment('${reservationInfo.startDate}');
		var endDate = moment('${reservationInfo.endDate}');
		console.log(startDate + " - " + endDate);
		
		//날짜선택 시 이벤트
		$('#reservationtime').on('apply.daterangepicker, hide.daterangepicker', function(ev, picker) {
		      console.log(picker.startDate.format('YYYY/MM/DD HH:mm') + ' - ' + picker.endDate.format('YYYY/MM/DD HH:mm'));
		  });
		
		//iCheck for checkbox and radio inputs
	    $('input[type="radio"].minimal').iCheck({
	      radioClass   : 'iradio_minimal-blue'
	    })
	    
		$('#reservationStartDate').datetimepicker({
			lang: 'ko',
			step: 30,
			minDate: 0,
			defaultDate: new Date(),
			defaultTime: '09:00',
			minTime: '09:00',
			maxTime: '18:00',
			disabledWeekDays: [0, 6],
			onSelectDate: function(ct) {
				$('#reservationStartDate').val(moment(ct).format('YYYY/MM/DD')+" 00:00");
				$.ajax({
		            type : "POST",
		            url : "/reserve/getTimeByDate",
		            data : {"buildNo" : $('#buildingSelect').val(),
		            		"roomNo" : $('#roomSelect').val(),
		            		"startDate" : $('#reservationStartDate').val()},
		            dataType : "json",
		            success : function(data) {
		            	console.log(JSON.stringify(data.reservationList));
		            	timeTableSetting($('#reservationStartDate').val(), data.reservationList);
		            }
				});
			}
		});
		
		$('#reservationEndDate').datetimepicker({
			step: 30,
			minDate: 0
		});
		
		function settingMinute(oneDate) {
			let hour = moment(oneDate).format('HH');
			let min = moment(oneDate).format('mm');
			let minute = parseInt(min/30+1)*30;
			
			return hour+':'+minute;
		}
		
		function timeTableSetting(oneDate, disabledTimes) {
			let selectedDate = moment(oneDate);
			let year = selectedDate.format('YYYY');
			let month = selectedDate.format('MM');
			let day = selectedDate.format('DD');
			let hour = selectedDate.format('HH');
			let min = selectedDate.format('mm');
			let minute = parseInt(min/30+1)*30;
			
			// 시간 셋팅
			let allowTimeList = new Array();
			for(var i = moment('09:00','HH:mm'); i<moment('18:00', 'HH:mm'); i.add(30, 'm')) {
				allowTimeList.push(i.format('HH:mm'));
			}
			
			$.each(disabledTimes, function(index, item) {
				console.log(moment(item.STARTDATE).format('YYYY/MM/DD HH:mm') +" - "+moment(item.ENDDATE).format('YYYY/MM/DD HH:mm'));
				for(var i = moment(item.STARTDATE); i < moment(item.ENDDATE); i.add(30, 'm')) {
					console.log(i.format('HH:mm'));
					allowTimeList.splice(allowTimeList.indexOf(i.format('HH:mm')), 1);
				}
			});
			
			console.log(allowTimeList);
			
			if(moment().format('YYYY/MM/DD')==selectedDate.format('YYYY/MM/DD')) { // 오늘일때
				$('#reservationStartDate').datetimepicker('setOptions', {
					minTime: settingMinute(new Date()),
					allowTimes: allowTimeList
				});
			} else {
				$('#reservationStartDate').datetimepicker('setOptions', {
					minTime: '09:00',
					allowTimes: allowTimeList
				});
			}
		}
		
		
	    
// 	    $(".timepicker").timeselect({
// 			disableTimes: ["09:00", "10:00"]
// 		});
		
// 	    $('.timepicker').timepicker({
// 	    	interval : 30,
// 	    	startTime: '09:00',
// 	    	endTime: '18:00',
// 	    	showInputs : false
// 	    });
	    
	});
</script>