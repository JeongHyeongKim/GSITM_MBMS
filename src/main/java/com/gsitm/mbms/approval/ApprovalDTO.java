package com.gsitm.mbms.approval;

import java.sql.Date;

import com.gsitm.mbms.employee.EmployeeDTO;
import com.gsitm.mbms.room.RoomDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @주제 : 
 * @작성일 : 2019. 5. 30.
 * @작성자 : 조성윤
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ApprovalDTO {
	private int reserveNo;
	private int roomNo;
	private String reserveEmpNo;
	private Date startDate;
	private Date endDate;
	private int approval1Yn; 
	private String approval1EmpNo;
	private Date approval1Date;
	private int approval2Yn; 
	private String approval2EmpNo;
	private Date approval2Date;
	private int paymentYn;
	private Date paymentDate;
	private Date reserveDate;
	private int reservePrice;
	private String purpose;
	private String category;
	private int priority;
	private int empCount;
	private char snackYn;
	private String reason;
	private String title;
	private EmployeeDTO employeeDTO;
	private RoomDTO roomDTO;
}
