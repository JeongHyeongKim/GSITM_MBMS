<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>결재자 비용 관리
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
        <li><a href="#">DEPARTMENT HEAD</a></li>
        <li class="active">결재자 비용 관리</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">비용 결제 리스트</h3>
              
                <input type="button" onclick="tableToExcel('example2')" class="btn btn-primary" value="EXCEL로 내보내기" style="float: right;" /> 
            </div>
            <!-- /.box-header -->
            <div id="dvData">
            <div class="box-body">
             
             
              <table id="example2" class="table table-bordered table-striped">
                
                <thead>
                <tr>
                  <th>예약 일자</th>
                  <th>회의 구분</th>
                  <th>주관 부서</th>
                  <th>결제 날짜</th> 
                  <th>비용(원)</th>  
                  <!-- <th>비고</th> -->
                </tr>
                </thead>
                                
                <tbody>
				<c:forEach var="PaymentDTO" items="${approverPaymentList}">
					<tr>
						<td>${PaymentDTO.startDate}</td>
						<td>${PaymentDTO.category}</td>
						<td>${PaymentDTO.deptName}</td>
						
						<!-- 
						<c:if test="${PaymentDTO.paymentYn == 0 }">
							<td>미결제</td>
						</c:if>
						<c:if test="${PaymentDTO.paymentYn == 1 }">
							<td>결제완료</td>
						</c:if>
						 -->
						 
						<td>${PaymentDTO.paymentDate}</td>
						<td>${PaymentDTO.reservePrice}</td>
					</tr>
				</c:forEach>
				</tbody>
				
				<tfoot>
				<tr>
				<th>총 실결제금액</th>
					<th></th><th></th><th></th>
					<c:set var = "sum" value = "0" />
					<c:forEach var="PaymentDTO" items="${approverPaymentList}">
					<c:if test="${PaymentDTO.paymentYn == 1 }">
					<c:set var= "sum" value="${sum + PaymentDTO.reservePrice}"/>
					</c:if>
					</c:forEach>
					<th> <c:out value="${sum}"/> </th>
				</tfoot>  
				      
              </table>
					
              </div>
            </div>
           </div>            
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
       	</div>
       </section>
        <!-- /.col -->
    </div>
      <!-- /.row -->

<script>
	$(function() {
		$('#example2').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : false,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		})
	})
</script>


<script type="text/javascript" src="libs/FileSaver/FileSaver.min.js"></script>
<script type="text/javascript" src="libs/js-xlsx/xlsx.core.min.js"></script>
<script type="text/javascript" src="libs/es6-promise/es6-promise.auto.min.js"></script>
<script type="text/javascript" src="libs/html2canvas/html2canvas.min.js"></script>
<script type="text/javascript" src="tableExport.min.js"></script>

<script>
// 	$('#example2').tableExport({
// 		,mfileName:"비용 결제 목록_" + new Date().toISOString().replace(/[\-\:\.]/g, "")
// 		,type:'excel'
// 		,excelstyles:['background-color', 'font-weight', 'text-align', 'width', 'font-size']
// 		,mso: { styles:['background-color', 'font-weight', 'text-align', 'width', 'font-size']
// 				,worksheetName: "비용 결제 목록"
// 				,fileFormat: "xlsx"}
// 		,ignoreRow:null
// 		,ignoreColumn: [7]
// 		,htmlContent: false
// 		,exportHiddenCells: true
// 	});
</script>

<script>
//엑셀로 내보내기
	function tableToExcel(id) {
	    var data_type = 'data:application/vnd.ms-excel;charset=utf-8';
	    var table_html = encodeURIComponent(document.getElementById(id).outerHTML);
	 
	    var a = document.createElement('a');
	    a.href = data_type + ',%EF%BB%BF' + table_html;
	    a.download = '비용 결제 리스트'+'.xls';
	    a.click();
	}
</script>