package com.gsitm.mbms.employee;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @주제 : 
 * @작성일 : 2019. 6. 18.
 * @작성자 : 조성윤
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO employeeDAO;
	
	/** 원빈: **/
	@Override
	public List<Map<String, Object>> getEmployeeList() {
		return employeeDAO.getEmployeeList();
	}
	
	/** 성윤: 모든 직원 정보 조회 **/
	@Override
	public List<EmployeeDTO> selectAllEmployee() {
		return employeeDAO.selectAllEmployee();
	}

	/** 성윤 : 부서 전체조회 (트리) **/
	@Override
	public List<Map<String, String>> selectAllDepartmentTree() {
		return employeeDAO.selectAllDepartmentTree();
	}

}
